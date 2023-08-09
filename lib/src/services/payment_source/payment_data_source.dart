import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:crimat_app/src/models/payment/request_data_model.dart';
import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../models/payment/payment_model.dart';

class PaymentDataSurce {
  final http.Client client;

  PaymentDataSurce(this.client);

  Future<PaymentModel> getPaymentData(String? token, RequestModel data) async {
    final Uri uri = Uri.https(Urls.api, Urls.getPaymentData);

    try {
      final response = await http.post(uri,
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(data.toJson()));

      if (response.statusCode == 201) {
        final jsonMap = jsonDecode(response.body);

        final paymentData = PaymentModel.fromJson(jsonMap);
        return paymentData;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

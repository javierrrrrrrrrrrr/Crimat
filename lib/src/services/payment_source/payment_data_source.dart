import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:crimat_app/src/models/payment/request_data_model.dart';
import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../models/payment/payment_model.dart';
import '../../models/payment/shipping_model.dart';

class PaymentDataSource {
  final http.Client client;

  PaymentDataSource(this.client);

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
        final errorMessage =
            'Ocurrió un problema en el servidor: ${response.statusCode}';
        throw ServerException(errorMessage);
      }
    } catch (e) {
      return throw ServerException();
    }
  }

  Future<List<ShippingModel>> getShippingMethods(String? token) async {
    final Uri uri = Uri.https(Urls.api, Urls.getShippingMethods);

    try {
      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;

        final shippingMethodList = jsonMap
            .map((shipping) => ShippingModel.fromJson(shipping))
            .toList();
        return shippingMethodList;
      } else {
        final errorMessage =
            'Ocurrió un problema en el servidor: ${response.statusCode}';
        throw ServerException(errorMessage);
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

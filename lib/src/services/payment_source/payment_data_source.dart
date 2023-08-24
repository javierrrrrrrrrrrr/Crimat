import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:crimat_app/src/models/payment/payment_with_token/request_data_model.dart';
import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../models/payment/payment_with_token/payment_model.dart';
import '../../models/payment/payment_with_token/shipping_model.dart';
import '../../models/payment/payment_without_token/without_token_request_model.dart';

class PaymentDataSource {
  final http.Client client;

  PaymentDataSource(this.client);

  Future<PaymentModel> getPaymentDatawithtoken(
      String? token, RequestModel data) async {
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

  Future<PaymentModel> getPaymentDataNoUser(
      OrderRequestModelWithoutToken data) async {
    final Uri uri = Uri.https(Urls.api, Urls.getPaymentData);

    try {
      final response = await http.post(uri,
          headers: {
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
    dynamic response;

    if (token != '' && token != null) {
      response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );
    } else {
      response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
        },
      );
    }

    try {
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

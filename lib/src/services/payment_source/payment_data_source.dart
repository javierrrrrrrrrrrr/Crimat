import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:crimat_app/src/models/payment/payment_with_token/request_data_model.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import '../../../resources/urls.dart';
import '../../models/auth/interceptors/token_refresh_interceptor.dart';
import '../../models/payment/payment_with_token/payment_model.dart';
import '../../models/payment/payment_with_token/shipping_model.dart';
import '../../models/payment/payment_without_token/without_token_request_model.dart';
import '../../repositories/token_refresh_repository.dart';

class PaymentDataSource {
  http.Client client;
  final TokenRefreshRepository tokenRefreshRepository;

  PaymentDataSource(this.client, this.tokenRefreshRepository) {
    final clientWithInterceptor = InterceptedClient.build(
      interceptors: [TokenRefreshInterceptor(tokenRefreshRepository)],
      requestTimeout: const Duration(seconds: 10),
      client: client,
    );
    client = clientWithInterceptor;
  }

  Future<PaymentModel> getPaymentDatawithtoken(
      String? token, RequestModel data) async {
    final Uri uri = Uri.https(Urls.api, Urls.getPaymentData);

    try {
      final response = await client.post(uri,
          headers: {
            'Authorization': 'Bearer $token',
            'Accept': 'application/json',
            'Content-Type': 'application/json; charset=utf-8',
            'Accept-Charset': 'utf-8',
          },
          body: jsonEncode(data.toJson()));

      if (response.statusCode == 201) {
        final utf8Response = utf8.decode(response.bodyBytes);
        final jsonMap = jsonDecode(utf8Response);

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
      final response = await client.post(uri,
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json; charset=utf-8',
            'Accept-Charset': 'utf-8',
          },
          body: jsonEncode(data.toJson()));

      if (response.statusCode == 201) {
        final utf8Response = utf8.decode(response.bodyBytes);
        final jsonMap = jsonDecode(utf8Response);

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
      response = await client.get(
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
          'Accept': 'application/json',
          'Content-Type': 'application/json; charset=utf-8',
          'Accept-Charset': 'utf-8',
        },
      );
    }

    try {
      if (response.statusCode == 200) {
        final utf8Response = utf8.decode(response.bodyBytes);
        final jsonList = jsonDecode(utf8Response) as List<dynamic>;

        final shippingMethodList = jsonList
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

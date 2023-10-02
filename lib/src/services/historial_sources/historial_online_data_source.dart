import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import '../../../resources/urls.dart';
import '../../errors/expetion.dart';
import '../../models/auth/interceptors/token_refresh_interceptor.dart';
import '../../models/payment/payment_with_token/payment_model.dart';
import '../../repositories/token_refresh_repository.dart';

class HistorialOnlineDataSource {
  http.Client client;
  final TokenRefreshRepository tokenRefreshRepository;

  HistorialOnlineDataSource(this.client, this.tokenRefreshRepository) {
    final clientWithInterceptor = InterceptedClient.build(
      interceptors: [TokenRefreshInterceptor(tokenRefreshRepository)],
      requestTimeout: const Duration(seconds: 10),
      client: client,
    );
    client = clientWithInterceptor;
  }

  Future<List<OrdenModel>> getAllhistorial(String token) async {
    final Uri uri = Uri.https(
      Urls.api,
      Urls.gethistorial,
    );

    try {
      final response = await client.get(uri, headers: {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=utf-8',
        'Accept-Charset': 'utf-8',
      });

      if (response.statusCode == 200) {
        final utf8Response = utf8.decode(response.bodyBytes);
        final jsonList = jsonDecode(utf8Response) as List<dynamic>;

        final historialList = jsonList
            .map((historialData) => OrdenModel.fromJson(historialData))
            .toList();
        return historialList;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

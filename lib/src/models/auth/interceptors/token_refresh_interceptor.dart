import 'package:http_interceptor/http_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../repositories/token_refresh_repository.dart';
import 'package:http/http.dart' as http;

class TokenRefreshInterceptor implements InterceptorContract {
  final TokenRefreshRepository tokenRefreshRepository;

  TokenRefreshInterceptor(this.tokenRefreshRepository);

  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    // final prefs = await SharedPreferences.getInstance();
    // final token = prefs.getString('token');
    // // Lógica para refrescar el token antes de cada solicitud
    // //falta
    // //  lógica de refresco de token aquí
    // final refreshedToken =
    //     await tokenRefreshRepository.refreshAccessToken(token: token!);

    // final modifiedHeaders = Map<String, String>.from(data.headers);
    // modifiedHeaders['Authorization'] = 'Bearer $refreshedToken';

    // final modifiedData = RequestData(
    //   headers: modifiedHeaders,
    //   body: data.body,
    //   baseUrl: data.url,
    //   method: data.method,
    // );

    // return modifiedData;
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    String updatedToken = '';

    if (data.statusCode == 401) {
      // Si la respuesta tiene un código 401 (Unauthorized),
      // se intenta refrescar el token

      // Obtener el token actual de las preferencias
      final prefs = await SharedPreferences.getInstance();
      final refreshtoken = prefs.getString('refresh_token');

      if (refreshtoken != null) {
        final refreshedTokenEither = await tokenRefreshRepository
            .refreshAccessToken(token: refreshtoken);

        refreshedTokenEither.fold(
          (failure) {
            // Manejar el fallo de actualización del token
          },
          (refreshedToken) {
            // Se actualiza el token en las preferencias
            prefs.setString('token', refreshedToken);
            updatedToken = refreshedToken;
          },
        );

        // Se crea una nueva solicitud con el nuevo token
        final modifiedHeaders = Map<String, String>.from(data.headers!);
        modifiedHeaders['Authorization'] = 'Bearer $updatedToken';

        final modifiedData = RequestData(
          headers: modifiedHeaders,
          body: data.body,
          baseUrl: data.url!,
          method: data.method!,
        );

        // Se envía la solicitud nuevamente con el cliente HTTP original
        final client = http.Client();
        final streamedResponse =
            await client.send(modifiedData.toHttpRequest());

        // Leer la respuesta
        final responseBytes = await streamedResponse.stream.toBytes();
        final responseString = String.fromCharCodes(responseBytes);

        // Se crea una nueva instancia de ResponseData con la respuesta actualizada
        final updatedResponse = ResponseData(
          responseBytes,
          streamedResponse.statusCode,
          headers: streamedResponse.headers,
          body: responseString,
          contentLength: streamedResponse.contentLength,
          isRedirect: streamedResponse.isRedirect,
          persistentConnection: streamedResponse.persistentConnection,
          request: modifiedData,
        );

        // Se devuelve la respuesta actualizada
        return updatedResponse;
      }
    }

    // Si no es una respuesta 401, se devuelve la respuesta original
    return data;
  }
}

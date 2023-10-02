import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../errors/expetion.dart';

class TokenRefreshDataSource {
  final http.Client client;

  TokenRefreshDataSource(this.client);

  Future<String> refreshToken(String refreshToken) async {
    final Uri uri = Uri.https(Urls.api, Urls.refreshtoken);

    try {
      final response = await http.post(uri, headers: {
        'Accept-Charset': 'utf-8',
      }, body: {
        'refresh': refreshToken,
      });

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final String token = responseData['access'];
        return token;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}

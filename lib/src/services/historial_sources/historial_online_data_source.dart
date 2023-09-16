import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../errors/expetion.dart';
import '../../models/payment/payment_with_token/payment_model.dart';

class HistorialOnlineDataSource {
  final http.Client client;

  HistorialOnlineDataSource(this.client);

  Future<List<OrdenModel>> getAllhistorial(String token) async {
    final Uri uri = Uri.https(
      Urls.api,
      Urls.gethistorial,
    );

    try {
      final response = await http.get(uri, headers: {
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

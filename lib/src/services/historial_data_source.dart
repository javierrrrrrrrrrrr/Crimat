import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../resources/urls.dart';
import '../errors/expetion.dart';
import '../models/historial/historial_model.dart';

class HistorialDataSource {
  final http.Client client;

  HistorialDataSource(this.client);

  Future<List<OrdenModel>> getAllhistorial(String token) async {
    final Uri uri = Uri.https(Urls.api, Urls.gethistorial, {
      'token': token,
    });

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;

        final historialList = jsonMap
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

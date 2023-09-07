import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';

import '../../models/home/almacen/almacen_model.dart';

class AlmacenDataSurce {
  final http.Client client;

  AlmacenDataSurce(this.client);

  Future<List<AlmacenModel>> getAllAlmacen() async {
    final Uri uri = Uri.https(Urls.api, Urls.getAlmacen);

    try {
      final response = await http.get(uri, headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=utf-8',
      });

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;

        final almacenesList = jsonMap
            .map((almacenData) => AlmacenModel.fromJson(almacenData))
            .toList();
        return almacenesList;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

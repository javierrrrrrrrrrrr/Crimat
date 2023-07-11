import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../resources/urls.dart';

import '../models/almacen_model.dart';

class AlmacenDataSurce {
  final http.Client client;

  AlmacenDataSurce(this.client);

  Future<Either<Exception, List<AlmacenModel>>> getAllAlmacen() async {
    final Uri uri = Uri.https(Urls.api, 'api/almacenes/');

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as Map<String, dynamic>;
        final almacenesData = jsonMap['data'] as List<dynamic>;

        final almacenesList = almacenesData
            .map((almacenData) => AlmacenModel.fromJson(almacenData))
            .toList();
        return Right(almacenesList);
      } else {
        return throw ServerException();
      }
    } catch (e) {}
    return const Right([]);
  }
}

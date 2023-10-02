import 'dart:convert';
import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;
import '../../../resources/urls.dart';
import '../../models/home/almacen/almacen_model.dart';

class AlmacenDataSurce {
  http.Client client;
//  final TokenRefreshRepository tokenRefreshRepository;

  AlmacenDataSurce(
    this.client,
  );

  Future<List<AlmacenModel>> getAllAlmacen() async {
    final Uri uri = Uri.https(Urls.api, Urls.getAlmacen);

    try {
      final response = await client.get(uri, headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=utf-8',
        'Accept-Charset': 'utf-8',
      });

      if (response.statusCode == 200) {
        final utf8Response = utf8.decode(response.bodyBytes);
        final jsonList = jsonDecode(utf8Response) as List<dynamic>;

        final almacenesList = jsonList
            .map((almacenData) => AlmacenModel.fromJson(almacenData))
            .toList();
        return almacenesList;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}

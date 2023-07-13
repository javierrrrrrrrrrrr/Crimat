import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../resources/urls.dart';
import '../errors/expetion.dart';
import '../models/features/home/products/producto_model.dart';

class ProductDataSource {
  final http.Client client;

  ProductDataSource(this.client);

  Future<List<ProductModel>> getAllProduct(String id) async {
    final Uri uri = Uri.https(Urls.api, Urls.getproducts, {
      'almacen': id,
    });

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;

        final almacenesList = jsonMap
            .map((almacenData) => ProductModel.fromJson(almacenData))
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

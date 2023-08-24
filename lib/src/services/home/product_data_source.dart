import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../errors/expetion.dart';
import '../../models/home/products/producto_model.dart';

class ProductDataSource {
  final http.Client client;

  ProductDataSource(this.client);

  Future<List<ProductModel>> getAllProduct(String id, String? token) async {
    final Uri uri = Uri.https(Urls.api, Urls.getproducts, {
      'almacen': id,
    });

    try {
      final http.Response response;
      if (token != '') {
        response =
            await http.get(uri, headers: {'Authorization': 'Bearer $token'});
      } else {
        response = await http.get(uri);
      }

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;

        final productList = jsonMap
            .map((productData) => ProductModel.fromJson(productData))
            .toList();
        return productList;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../models/home/products/producto_model.dart';

class FavoriteDataSurce {
  final http.Client client;

  FavoriteDataSurce(this.client);

  Future<List<ProductModel>> getFavorite(String token) async {
    final Uri uri = Uri.https(Urls.api, Urls.getFavorite);

    try {
      final response =
          await http.get(uri, headers: {'Authorization': 'Bearer $token'});

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;

        final listFavoriteProducts = jsonMap
            .map((favoriteData) => ProductModel.fromJson(favoriteData))
            .toList();
        return listFavoriteProducts;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }

  Future<void> addFavorite(String token, int productid) async {
    final Uri uri = Uri.https(Urls.api, Urls.addFavorite);

    final response = await http.post(uri,
        headers: {'Authorization': 'Bearer $token'},
        body: {'producto': '$productid'});
    if (response.statusCode == 200) {
      print("Se agrego correctamente a favorito");
    } else {
      print("Error al intentar agregar producto  a favoritos");
    }
  }

  Future<void> removeFavorite(String token, int productid) async {
    final Uri uri = Uri.https(Urls.api, Urls.deleteFavorite);

    final response = await http.post(uri,
        headers: {'Authorization': 'Bearer $token'},
        body: {'producto': '$productid'});
    if (response.statusCode == 200) {
      print("Se elimino correctamente a favorito");
    } else {
      print("Error al intentar agregar eliminar  a favoritos");
    }
  }
}

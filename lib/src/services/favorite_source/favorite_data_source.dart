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
}

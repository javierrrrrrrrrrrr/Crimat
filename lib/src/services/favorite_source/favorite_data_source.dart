import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';

import '../../../resources/urls.dart';
import '../../models/auth/interceptors/token_refresh_interceptor.dart';
import '../../models/home/products/producto_model.dart';
import '../../repositories/token_refresh_repository.dart';

class FavoriteDataSurce {
  http.Client client;
  final TokenRefreshRepository tokenRefreshRepository;

  FavoriteDataSurce(this.client, this.tokenRefreshRepository) {
    final clientWithInterceptor = InterceptedClient.build(
      interceptors: [TokenRefreshInterceptor(tokenRefreshRepository)],
      requestTimeout: const Duration(seconds: 10),
      client: client,
    );
    client = clientWithInterceptor;
  }

  Future<List<ProductModel>> getFavorite(String token) async {
    final Uri uri = Uri.https(Urls.api, Urls.getFavorite);

    try {
      final response = await client.get(uri, headers: {
        'Authorization': 'Bearer $token',
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=utf-8',
        'Accept-Charset': 'utf-8',
      });

      if (response.statusCode == 200) {
        final utf8Response = utf8.decode(response.bodyBytes);
        final jsonList = jsonDecode(utf8Response) as List<dynamic>;

        final listFavoriteProducts = jsonList
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

    final response = await client.post(uri,
        headers: {'Authorization': 'Bearer $token'},
        body: {'producto': '$productid'});
    if (response.statusCode == 200) {
    } else {}
  }

  Future<void> removeFavorite(String token, int productid) async {
    final Uri uri = Uri.https(Urls.api, Urls.deleteFavorite);

    final response = await client.post(uri,
        headers: {'Authorization': 'Bearer $token'},
        body: {'producto': '$productid'});
    if (response.statusCode == 200) {
    } else {}
  }
}

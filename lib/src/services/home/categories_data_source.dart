import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;
import 'package:http_interceptor/http/intercepted_client.dart';
import '../../../resources/urls.dart';
import '../../models/auth/interceptors/token_refresh_interceptor.dart';
import '../../models/home/categories/categories_model.dart';
import '../../repositories/token_refresh_repository.dart';

class CategoriesDataSurce {
  http.Client client;
  final TokenRefreshRepository tokenRefreshRepository;

  CategoriesDataSurce(this.client, this.tokenRefreshRepository) {
    final clientWithInterceptor = InterceptedClient.build(
      interceptors: [TokenRefreshInterceptor(tokenRefreshRepository)],
      requestTimeout: const Duration(seconds: 10),
      client: client,
    );
    client = clientWithInterceptor;
  }

  Future<List<CategoriesModel>> getAllCategories() async {
    final Uri uri = Uri.https(Urls.api, Urls.getcategories);

    try {
      final response = await client.get(uri, headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=utf-8',
        'Accept-Charset': 'utf-8',
      });

      if (response.statusCode == 200) {
        final utf8Response = utf8.decode(response.bodyBytes);
        final jsonList = jsonDecode(utf8Response) as List<dynamic>;

        final categoriesList = jsonList
            .map((categoriesData) => CategoriesModel.fromJson(categoriesData))
            .toList();
        return categoriesList;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;
import '../../../resources/urls.dart';
import '../../models/home/categories/categories_model.dart';

class CategoriesDataSurce {
  final http.Client client;

  CategoriesDataSurce(this.client);

  Future<List<CategoriesModel>> getAllCategories() async {
    final Uri uri = Uri.https(Urls.api, Urls.getcategories);

    try {
      final response = await http.get(uri, headers: {
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

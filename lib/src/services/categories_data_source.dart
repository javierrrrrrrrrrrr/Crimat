import 'dart:convert';

import 'package:crimat_app/src/errors/expetion.dart';
import 'package:http/http.dart' as http;
import '../../resources/urls.dart';
import '../models/home/categories/categories_model.dart';

class CategoriesDataSurce {
  final http.Client client;

  CategoriesDataSurce(this.client);

  Future<List<CategoriesModel>> getAllCategories() async {
    final Uri uri = Uri.https(Urls.api, Urls.getcategories);

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;

        final categoriesList = jsonMap
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

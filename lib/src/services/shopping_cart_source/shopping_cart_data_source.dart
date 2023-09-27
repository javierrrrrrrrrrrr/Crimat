import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../errors/expetion.dart';
import '../../models/home/products/producto_model.dart';

class ShoppingCartDataSource {
  final SharedPreferences sharedPreferences;
  final String _shoppingCartKey = 'shopping_cart_key';

  ShoppingCartDataSource(this.sharedPreferences);

  Future<List<ProductModel>> getShoppingCartData() async {
    final shoppingCartHistorial = sharedPreferences.getString(_shoppingCartKey);

    if (shoppingCartHistorial != null) {
      final shoppingcart = json.decode(shoppingCartHistorial) as List<dynamic>;

      return shoppingcart.map((json) => ProductModel.fromJson(json)).toList();
    } else {
      return [];
    }
  }

  Future<void> saveShoppingCartData(List<ProductModel> shoppingCartData) async {
    final jsonList = shoppingCartData.map((orden) => orden.toJson()).toList();

    final jsonString = json.encode(jsonList);

    await sharedPreferences.setString(_shoppingCartKey, jsonString);
  }

  Future<void> clearShoppingCartData() async {
    try {
      await sharedPreferences.remove(_shoppingCartKey);
    } catch (e) {
      throw CacheException();
    }
  }
}

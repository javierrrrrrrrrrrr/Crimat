import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../errors/expetion.dart';
import '../../models/payment/payment_with_token/payment_model.dart';

class HistorialLocalDataSource {
  final SharedPreferences sharedPreferences;
  final String _historialKey = 'historial_key';

  HistorialLocalDataSource(this.sharedPreferences);

  Future<List<OrdenModel>> getHistorial() async {
    final storedHistorial = sharedPreferences.getString(_historialKey);

    if (storedHistorial != null) {
      final historial = json.decode(storedHistorial) as List<dynamic>;

      return historial.map((json) => OrdenModel.fromJson(json)).toList();
    } else {
      return [];
    }
  }

  Future<void> saveHistorial(List<OrdenModel> historial) async {
    final jsonList = historial.map((orden) => orden.toJson()).toList();

    final jsonString = json.encode(jsonList);

    await sharedPreferences.setString(_historialKey, jsonString);
  }

  Future<void> clearHistorial() async {
    try {
      await sharedPreferences.remove(_historialKey);
    } catch (e) {
      throw CacheException();
    }
  }
}

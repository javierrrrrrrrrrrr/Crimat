import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../resources/urls.dart';
import '../../errors/expetion.dart';
import '../../models/profile/profile_model.dart';

class ProfileDataSource {
  final http.Client client;
  final SharedPreferences sharedPreferences;
  ProfileDataSource(this.client, this.sharedPreferences);
  final String _historialKey = 'historial';

  Future<ProfileModel> getProfileData(String token) async {
    final Uri uri = Uri.https(
      Urls.api,
      Urls.getProfilData,
    );

    try {
      final response =
          await http.get(uri, headers: {'Authorization': 'Bearer $token'});

      if (response.statusCode == 200) {
        print("responsebody ${response.body}");
        final jsonMap = jsonDecode(response.body);

        final profileData = ProfileModel.fromJson(jsonMap);
        return profileData;

        // final jsonMap = jsonDecode(response.body) as List<dynamic>;

        // final profilData = jsonMap
        //     .map((profileData) => ProfileModel.fromJson(profileData))
        //     .toList();
        // return profilData[0];

        //  final jsonMap = jsonDecode(response.body) as List<dynamic>;

        //       final productList = jsonMap
        //           .map((productData) => ProductModel.fromJson(productData))
        //           .toList();
        //       return productList;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }

  Future<void> saveSeleccion(int id) async {
    try {
      final jsonString = json.encode(id);
      await sharedPreferences.setString(_historialKey, jsonString);
    } catch (e) {
      throw CacheException();
    }
  }

  Future<int> readHistorial() async {
    try {
      final jsonString = sharedPreferences.getString(_historialKey);
      if (jsonString != null) {
        final id = json.decode(jsonString) as int;

        // Realizar las operaciones necesarias con el ID guardado
        // para marcar la selección guardada.

        return id;
      }
    } catch (e) {
      throw CacheException();
    }
    return 0; // Si no se encuentra ninguna selección guardada, devuelve null
  }
}

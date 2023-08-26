import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../resources/urls.dart';
import '../../errors/expetion.dart';
import '../../models/profile/edit_salon_request_data_model.dart';
import '../../models/profile/new_salon_request_data_model.dart';
import '../../models/profile/profile_model.dart';
import '../../models/profile/subscriptions_model.dart';

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

        return id;
      }
    } catch (e) {
      throw CacheException();
    }
    return 0;
  }

  Future<SalonModel> createSalon(String? token, SalonRequestModel data) async {
    final Uri uri = Uri.https(Urls.api, Urls.createNewSalon);

    try {
      final response = await http.post(uri,
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(data.toJson()));

      if (response.statusCode == 201) {
        final jsonMap = jsonDecode(response.body);

        final salondata = SalonModel.fromJson(jsonMap);
        return salondata;
      } else {
        final errorMessage =
            'Ocurrió un problema en el servidor: ${response.statusCode}';
        throw ServerException(errorMessage);
      }
    } catch (e) {
      return throw ServerException();
    }
  }

  Future<SalonModel> editSalon(
      String? token, EditSalonResponseModel data) async {
    final Uri uri = Uri.https(Urls.api, Urls.createNewSalon);
    try {
      final response = await http.put(uri,
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
          },
          body: jsonEncode(data.toJson()));

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body);

        final salondata = SalonModel.fromJson(jsonMap);
        return salondata;
      } else {
        final errorMessage =
            'Ocurrió un problema en el servidor: ${response.statusCode}';
        throw ServerException(errorMessage);
      }
    } catch (e) {
      return throw ServerException();
    }
  }

  Future<List<SubscriptionsModel>> getTypeSubscriptions(
    String? token,
  ) async {
    final Uri uri = Uri.https(Urls.api, Urls.getSubscriptionsData);
    try {
      final response = await http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body) as List<dynamic>;
        final subscriptionsdata = jsonMap
            .map((almacenData) => SubscriptionsModel.fromJson(almacenData))
            .toList();
        return subscriptionsdata;
      } else {
        final errorMessage =
            'Ocurrió un problema en el servidor: ${response.statusCode}';
        throw ServerException(errorMessage);
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

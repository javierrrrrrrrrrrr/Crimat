import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../resources/urls.dart';
import '../../errors/expetion.dart';
import '../../models/profile/profile_model.dart';

class ProfileDataSource {
  final http.Client client;

  ProfileDataSource(this.client);

  Future<ProfileModel> getProfileData(String token) async {
    final Uri uri = Uri.https(
      Urls.api,
      Urls.getProfilData,
    );

    try {
      final response =
          await http.get(uri, headers: {'Authorization': 'Bearer $token'});

      if (response.statusCode == 200) {
        final jsonMap = jsonDecode(response.body);
        final profilData = ProfileModel.fromJson(jsonMap);
        return profilData;
      } else {
        return throw ServerException();
      }
    } catch (e) {
      return throw ServerException();
    }
  }
}

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
}

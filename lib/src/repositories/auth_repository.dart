import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../resources/urls.dart';
import '../models/auth/login_response_model.dart';

class AuthRepository {
  Future<LoginResponseModel> login(String email, String password) async {
    Map<String, String> headers = {'Content-Type': 'application/json'};

    Map<String, dynamic> body = {
      "email": email,
      "password": password,
    };

    final bodyToSend = jsonEncode(body);
    Uri uri = Uri.https(Urls.host, Urls.login);
    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    final prefs = await SharedPreferences.getInstance();
    if (response.statusCode == 200) {
      // Guardar las credenciales en SharedPreferences
      prefs.setString('email', email);
      prefs.setString('password', password);
      return LoginResponseModel.fromJson(decodeResponse);
    } else {
      prefs.remove('email');
      prefs.remove('password');
      throw (decodeResponse['error']);
    }
  }

  Future<void> register(Map<String, dynamic> body) async {
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final bodyToSend = jsonEncode(body);
    final Uri uri = Uri.https(Urls.host, Urls.register);

    var response = await http.post(uri, headers: headers, body: bodyToSend);

    if (response.statusCode != 201) {
      var decodeResponse = jsonDecode(response.body);
      throw (decodeResponse['error']);
    }
  }

  resetPassword(String email) async {
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final bodyToSend = jsonEncode({"email": email});
    final Uri uri = Uri.https(Urls.host, Urls.resetPassword);

    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw (decodeResponse['error']);
    }
  }

  changePassword(Map<String, dynamic> body) async {
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final bodyToSend = jsonEncode(body);
    final Uri uri = Uri.https(Urls.host, Urls.changePassword);

    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw (decodeResponse['error']);
    }
  }
}

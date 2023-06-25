import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../resources/urls.dart';
import '../models/login_response_model.dart';

class AuthRepository{

  Future<LoginResponseModel> login(String email, String password)async{
    Map<String, String> headers = {
      'Content-Type': 'application/json'
    };

    Map<String, dynamic> body = {
      "email": email,
      "password": password,
    };

    final bodyToSend = jsonEncode(body);
    Uri uri = Uri.https(Urls.host, Urls.login);
    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    if(response.statusCode == 200) {
      return LoginResponseModel.fromJson(decodeResponse);
    }
    else{
      throw(decodeResponse['error']);
    }
  }

  Future<void> register(Map<String, dynamic> body)async{
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final bodyToSend = jsonEncode(body);
    final Uri uri = Uri.https(Urls.host, Urls.register);

    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    if(response.statusCode != 201){
      throw(decodeResponse['error']);
    }
  }

  resetPassword(String email)async{
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final bodyToSend = jsonEncode({
      "email": email
    });
    final Uri uri = Uri.https(Urls.host, Urls.resetPassword);

    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    if(response.statusCode != 200){
      throw(decodeResponse['error']);
    }
  }

  changePassword(Map<String, dynamic> body)async{
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final bodyToSend = jsonEncode(body);
    final Uri uri = Uri.https(Urls.host, Urls.changePassword);

    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    if(response.statusCode != 200){
      throw(decodeResponse['error']);
    }
  }
}
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
    Uri uri = Uri.parse(Urls.login);
    var response = await http.post(uri, headers: headers, body: bodyToSend);
    var decodeResponse = jsonDecode(response.body);
    if(response.statusCode == 200) {
      return LoginResponseModel.fromJson(decodeResponse);
    }
    else{
      throw(decodeResponse['error']);
    }
  }
}
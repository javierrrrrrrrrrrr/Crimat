import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import '../../layout/layout_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      messages: LoginMessages(
        userHint: 'Usuario'
      ),
      userType: LoginUserType.name,
      onSignup: _signupUser,
      onLogin: onLogin,
      onRecoverPassword: onRecoverPassword,
      onSubmitAnimationCompleted: (){Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> const LayoutScreen())
      );},
    );
  }

  Future<String?> onLogin(LoginData data) async{
    await Future.delayed(const Duration(seconds: 2));
    if(data.name == '' || data.password == ''){
      return 'Autenticación no válida';
    }
    return null;
  }

  Future<String?> onRecoverPassword(String name) async{
    await Future.delayed(const Duration(seconds: 2));
    if(name == ''){
      return 'Autenticación no válida';
    }
    return null;
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(const Duration(seconds: 2)).then((_) {
      return null;
    });
  }
}

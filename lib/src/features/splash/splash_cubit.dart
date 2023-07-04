import 'package:crimat_app/src/features/splash/intro_screen.dart';
import 'package:crimat_app/src/features/splash/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/widgets/error_dialog.dart';
import '../layout/layout_screen.dart';

class SplashCubit extends Cubit<SplashState>{
  bool login = false;
  SplashCubit() : super(const SplashState.loading());

  onLoading() async{
    await Future.delayed(const Duration(seconds: 2));
    if(!isClosed) emit(const SplashState.onSuccess());
  }

  // Future<UserModel?> checkLogin() async{
  //   ///This method checks if is there a token saved and gets the user for that token
  //   Future<SharedPreferences> preferences = SharedPreferences.getInstance();
  //   final SharedPreferences prefs = await preferences;
  //   String? savedToken = prefs.getString('savedToken');
  //   if(savedToken != null){
  //     ///Call getUser service and return the real userModel
  //     return UserModel('username');
  //   }else{
  //     return null;
  //   }
  // }

  void error(BuildContext context){
    showDialog(context: context, builder: (context) => ErrorDialog(content: state.error!,)).then(
        (_) {
          if(!isClosed) emit(const SplashState.loading());
        }
    );
  }

  void onSuccess(context){
    if(login){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  LayoutScreen())
    );
    }else{
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const IntroScreen())
      );
    }
  }
}

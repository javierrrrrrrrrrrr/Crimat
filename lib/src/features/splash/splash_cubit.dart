import 'package:crimat_app/src/features/splash/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/auth/login_response_model.dart';
import '../../repositories/auth_repository.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState(status: SplashStatus.loading));

  void init() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstTime = prefs.getBool('isFirstTime');

    await Future.delayed(const Duration(seconds: 2));

    if (!isClosed) {
      if (isFirstTime == null) {
        // La primera vez que el usuario ingresa
        prefs.setBool(
            'isFirstTime', false); // Marcar que ya se mostró el onboarding
        emit(state.copyWith(
          status: SplashStatus.leaded,
          isLogin: 1,
        ));
      } else {
        bool repuesta = await checkLogin();
        if (repuesta == false) {
          emit(state.copyWith(
            status: SplashStatus.leaded,
            isLogin: 2,
          ));
        } else {
          emit(state.copyWith(
            status: SplashStatus.leaded,
            isLogin: 3,
          ));
        }
      }
    }
  }
}

Future<bool> checkLogin() async {
  bool value = false;
  final prefs = await SharedPreferences.getInstance();
  //String? token = AppInfo().accessToken;
  final savedEmail = prefs.getString('email');
  final savedPassword = prefs.getString('password');

  if (savedEmail != null && savedPassword != null) {
    LoginResponseModel resp =
        await AuthRepository().login(savedEmail, savedPassword);
    if (resp.accessToken.isNotEmpty) {
      value = true;
    } else {
      value = false;
    }
  }
  return value;
}

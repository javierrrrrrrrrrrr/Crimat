import 'package:crimat_app/src/features/splash/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          isLogin: false,
        ));
      } else {
        // Usuario ya ingresó antes
        emit(state.copyWith(
          status: SplashStatus.leaded,
          isLogin: true, // Puedes ajustar esto según tu lógica de autenticación
        ));
      }
    }
  }
}

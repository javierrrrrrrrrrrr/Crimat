import 'package:crimat_app/src/features/splash/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  
  SplashCubit() : super(const SplashState(status: SplashStatus.loading));

  void init() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!isClosed) {
      emit(state.copyWith(
        status: SplashStatus.leaded,
        isLogin: true,
      ));
    }
  }

  // void error(BuildContext context) {

  // }

  // void onSuccess(BuildContext context) {

  // }
}

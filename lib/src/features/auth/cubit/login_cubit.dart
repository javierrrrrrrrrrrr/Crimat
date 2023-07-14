import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:crimat_app/src/models/auth/login_response_model.dart';
import 'package:crimat_app/src/repositories/auth_repository.dart';
import 'package:crimat_app/src/shared/app_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../auth_state.dart';

class LoginCubit extends Cubit<AuthState> {
  FormGroup loginForm = FormGroup({
    'email': FormControl<String>(
      validators: [Validators.required, Validators.email],
    ),
    'password': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
  });

  LoginCubit() : super(const AuthState(onLoading: false));

  Future<void> login({required VoidCallback onLoginSuccess}) async {
    if (!isClosed) emit(const AuthState(onLoading: true));
    loginForm.markAsDisabled();
    try {
      String email = loginForm.control('email').value;
      String password = loginForm.control('password').value;
      LoginResponseModel loginResponse =
          await AuthRepository().login(email, password);
      AppInfo appInfo = AppInfo();
      appInfo
        ..accessToken = loginResponse.accessToken
        ..refreshToken = loginResponse.refreshToken;
      onLoginSuccess.call();
    } catch (e) {
      UtilFunctions.printToast(
          message: e.toString(), color: GStyles.alertColor);
      if (!isClosed) emit(const AuthState(onLoading: false));
      loginForm.markAsEnabled();
    }
  }
}

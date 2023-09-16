import 'package:crimat_app/src/features/auth/auth_state.dart';
import 'package:crimat_app/src/repositories/auth_repository.dart';
import 'package:crimat_app/src/shared/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter/material.dart';


class RegisterCubit extends Cubit<AuthState>{
  RegisterCubit():super(const AuthState(onLoading: false));

  FormGroup registerForm = FormGroup({
    'nombre': FormControl<String>(validators: [Validators.required,], ),
    'apellidos': FormControl<String>(validators: [Validators.required,], ),
    'email': FormControl<String>(validators: [Validators.required, Validators.email],),
    'password': FormControl<String>(validators: [Validators.required,], ),
    'repeat_password': FormControl<String>(validators: [Validators.required, ], ),
    'telefono': FormControl<String>(validators: [Validators.required,], ),
    'licencia': FormControl<String>(validators: [Validators.required,], ),
  },
    validators: [Validators.mustMatch('password', 'repeat_password')],
  );

  FormGroup addressForm = FormGroup({
    'direccion': FormControl<String>(validators: [Validators.required,], ),
    'apartado': FormControl<String>(validators: [Validators.required,], ),
    'ciudad': FormControl<String>(validators: [Validators.required,], ),
    'estado': FormControl<String>(validators: [Validators.required,], ),
    'codigo_postal': FormControl<String>(validators: [Validators.required,], ),
  });

  Future<void> register({required VoidCallback onRegisterSuccess})async{
    if(!isClosed) emit(const AuthState(onLoading: true));
    registerForm.markAsDisabled();
    addressForm.markAsDisabled();
    try{
      ///Se conforma el json que se va a enviar para el registro.
      ///Se elimina repeat_password y se añade addressForm como parametro direccion
      Map<String, dynamic> requestBody = Map<String, dynamic>.from(registerForm.value);
      requestBody.remove('repeat_password');
      requestBody['direccion'] = Map<String, dynamic>.from(addressForm.value);
      // await Future.delayed(const Duration(seconds: 3));
      await AuthRepository().register(requestBody);
      onRegisterSuccess.call();
    }catch(error){
      UtilFunctions.printToast(message: error.toString());
      registerForm.markAsEnabled();
      addressForm.markAsEnabled();
      if(!isClosed) emit(const AuthState(onLoading: false));
    }
  }




}
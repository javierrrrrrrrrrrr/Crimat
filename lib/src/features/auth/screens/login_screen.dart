import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/features/auth/cubit/login_cubit.dart';
import 'package:crimat_app/src/features/auth/auth_state.dart';
import 'package:crimat_app/src/shared/widgets/custom_reactive_text_field.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String name = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, AuthState>(builder: (context, state) {
      LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(25.sp, 0, 25.sp, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 35.sp,
                  ),
                  Row(
                    children: [
                      Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Hola, bienvenido nuevamente a su cuenta.",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            color: Colors.black38),
                      )),
                  SizedBox(
                    height: 40.sp,
                  ),
                  ReactiveForm(
                    formGroup: cubit.loginForm,
                    child: Column(
                      children: [
                        ReactiveTextField(
                          validationMessages: {
                            'required': (error) => "Este campo es obligatorio",
                            'email': (error) =>
                                "Debe introducir un email válido"
                          },
                          formControlName: 'email',
                          decoration: GStyles.formDecoration
                              .copyWith(labelText: "Correo"),
                        ),
                        SizedBox(height: 16.sp),
                        const CustomRxTextField(
                          formControlName: 'password',
                          labelText: "Contraseña",
                          hideText: true,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  GestureDetector(
                    onTap: () => context.push('/resetPassword'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Has olvidado la contraseña?",
                          style:
                              GStyles.normalTextStyle.copyWith(fontSize: 16.sp),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: GStyles.primaryColor,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45.sp,
                  ),
                  LargeButton(
                    text: "Iniciar",
                    loading: state.onLoading,
                    onPressed: () {
                      if (!state.onLoading && cubit.loginForm.valid) {
                        cubit.login(onLoginSuccess: () {
                          context.go('/home');
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 14.sp,
                  ),
                  LargeButton(
                    text: "Continuar",
                    color: Colors.white,
                    onPressed:
                        state.onLoading ? null : () => context.go('/home'),
                  ),
                  SizedBox(
                    height: 50.sp,
                  ),
                  TextButton(
                    onPressed: () => context.push('/register'),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        children: [
                          Text(
                            "Aún no estás registrado?",
                            style: GStyles.normalTextStyle,
                          ),
                          SizedBox(
                            width: 10.sp,
                          ),
                          Text(
                            "Crea una cuenta",
                            style: GStyles.normalTextStyle
                                .copyWith(color: GStyles.primaryColor),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}

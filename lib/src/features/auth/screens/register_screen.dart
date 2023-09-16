import 'package:crimat_app/src/features/auth/auth_state.dart';
import 'package:crimat_app/src/features/auth/cubit/register_cubit.dart';
import 'package:crimat_app/src/features/auth/screens/register_on_process_screen.dart';
import 'package:crimat_app/src/shared/utils/utils.dart';
import 'package:crimat_app/src/shared/widgets/custom_reactive_text_field.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const String name = 'register_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, AuthState>(builder: (context, state) {
        RegisterCubit cubit = BlocProvider.of<RegisterCubit>(context);
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.fromLTRB(25.sp, 0, 25.sp, 0),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 35.sp,
                  ),
                  Row(
                    children: [
                      Text(
                        "Crea una cuenta",
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Expanded(
                      child: ListView(
                    padding: EdgeInsets.only(top: 10.sp),
                    children: [
                      ReactiveForm(
                        formGroup: cubit.registerForm,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                    child: CustomRxTextField(
                                        formControlName: 'nombre',
                                        labelText: "Nombre")),
                                SizedBox(
                                  width: 10.sp,
                                ),
                                const Expanded(
                                    child: CustomRxTextField(
                                        formControlName: 'apellidos',
                                        labelText: "Apellidos")),
                              ],
                            ),
                            const CustomRxTextField(
                                formControlName: "email", labelText: "Correo"),
                            const CustomRxTextField(
                              formControlName: "password",
                              labelText: "Contraseña",
                              hideText: true,
                            ),
                            const CustomRxTextField(
                              formControlName: 'repeat_password',
                              labelText: "Repetir contraseña",
                              hideText: true,
                            ),
                            const CustomRxTextField(
                                formControlName: 'telefono',
                                labelText: "Teléfono"),
                            const CustomRxTextField(
                                formControlName: 'licencia',
                                labelText: "Licencia")
                          ],
                        ),
                      ),
                      ReactiveForm(
                        formGroup: cubit.addressForm,
                        child: Column(
                          children: [
                            const CustomRxTextField(
                                formControlName: 'direccion',
                                labelText: "Dirección"),
                            Row(
                              children: [
                                const Expanded(
                                    child: CustomRxTextField(
                                        formControlName: 'apartado',
                                        labelText: "Apartado")),
                                SizedBox(
                                  width: 10.sp,
                                ),
                                const Expanded(
                                    child: CustomRxTextField(
                                        formControlName: 'ciudad',
                                        labelText: "Ciudad")),
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                    child: CustomRxTextField(
                                        formControlName: 'estado',
                                        labelText: "Estado")),
                                SizedBox(
                                  width: 10.sp,
                                ),
                                const Expanded(
                                    child: CustomRxTextField(
                                        formControlName: 'codigo_postal',
                                        labelText: "Código Postal")),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 20.sp,
                  ),
                  LargeButton(
                    loading: state.onLoading,
                    text: "Registrarse",
                    onPressed: () {
                      if (!state.onLoading &&
                          cubit.addressForm.valid &&
                          cubit.registerForm.valid) {
                        cubit.register(onRegisterSuccess: () {
                          onRegisterSuccess(context);
                        });
                      } else {
                        UtilFunctions.printToast(
                            message:
                                "Hay campos no válidos, por favor revise nuevamente los campos a llenar.");
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  LargeButton(
                    text: "Registrarse más tarde",
                    color: Colors.white,
                    onPressed: state.onLoading
                        ? null
                        : () {
                            goHome(context);
                          },
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }

  void goHome(BuildContext context) => context.go('/home');

  void onRegisterSuccess(BuildContext context) {
    try {
      context.pushReplacementNamed(RegisterOnProcessScreen.name);
    } catch (e) {
      print(e.toString());
      print('');
    }
  }
}

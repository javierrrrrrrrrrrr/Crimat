import 'package:crimat_app/src/features/auth/auth_state.dart';
import 'package:crimat_app/src/features/auth/cubit/register_cubit.dart';
import 'package:crimat_app/src/features/auth/screens/register_on_process_screen.dart';
import 'package:crimat_app/src/features/layout/layout_screen.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:crimat_app/src/shared/utils/utils.dart';
import 'package:crimat_app/src/shared/widgets/custom_reactive_text_field.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, AuthState>(
        builder: (context, state) {
          RegisterCubit cubit = BlocProvider.of<RegisterCubit>(context);
          return Scaffold(
            body: Padding(
              padding: EdgeInsets.fromLTRB(25.sp, 0, 25.sp, 0),
              child: SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 35.sp,),
                    Row(
                      children: [
                        Text(context.loc.createAccount, style: TextStyle(fontSize: 28.sp, fontFamily: "Poppins", fontWeight: FontWeight.w500,),),
                      ],
                    ),
                    SizedBox(height: 20.sp,),
                    Expanded(child: ListView(
                      padding: EdgeInsets.only(top: 10.sp),
                      children: [
                        ReactiveForm(
                          formGroup: cubit.registerForm,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: CustomRxTextField(formControlName: 'nombre', labelText: context.loc.name)),
                                  SizedBox(width: 10.sp,),
                                  Expanded(child: CustomRxTextField(formControlName: 'apellidos', labelText: context.loc.lastName)),
                                ],
                              ),
                              CustomRxTextField(formControlName: "email", labelText: context.loc.email),
                              CustomRxTextField(formControlName: "password", labelText: context.loc.password, hideText: true,),
                              CustomRxTextField(formControlName: 'repeat_password', labelText: context.loc.repeatPassword, hideText: true,),
                              CustomRxTextField(formControlName: 'telefono', labelText: context.loc.phone),
                              CustomRxTextField(formControlName: 'licencia', labelText: context.loc.license)
                            ],
                          ),
                        ),
                        ReactiveForm(
                          formGroup: cubit.addressForm,
                          child: Column(
                            children: [
                              CustomRxTextField(formControlName: 'direccion', labelText: context.loc.address),
                              Row(
                                children: [
                                  Expanded(child: CustomRxTextField(formControlName: 'apartado', labelText: context.loc.aparted)),
                                  SizedBox(width: 10.sp,),
                                  Expanded(child: CustomRxTextField(formControlName: 'ciudad', labelText: context.loc.city)),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(child: CustomRxTextField(formControlName: 'estado', labelText: context.loc.state)),
                                  SizedBox(width: 10.sp,),
                                  Expanded(child: CustomRxTextField(formControlName: 'codigo_postal', labelText: context.loc.postalCode)),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                    SizedBox(height: 20.sp,),
                    LargeButton(
                      loading: state.onLoading,
                      text: context.loc.register,
                      onPressed: (){
                        if(!state.onLoading && cubit.addressForm.valid && cubit.registerForm.valid){
                          cubit.register(onRegisterSuccess: (){onRegisterSuccess(context);});
                        }else{
                          UtilFunctions.printToast(message: context.loc.invalidFormText);
                        }
                      },
                    ),
                    SizedBox(height: 10.sp,),
                    LargeButton(
                      text: context.loc.registerLater,
                      color: Colors.white,
                      onPressed: state.onLoading ? null : (){goHome(context);},
                    ),
                    SizedBox(height: 20.sp,),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }

  void goHome(BuildContext context){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>  LayoutScreen()));
  }

  void onRegisterSuccess(BuildContext context){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const RegisterOnProcessScreen()), (route) => false);
  }

}

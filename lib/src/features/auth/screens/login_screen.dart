import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/features/auth/cubit/login_cubit.dart';
import 'package:crimat_app/src/features/auth/auth_state.dart';
import 'package:crimat_app/src/features/auth/screens/reset_password_screen.dart';
import 'package:crimat_app/src/features/layout/layout_screen.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:crimat_app/src/shared/widgets/custom_reactive_text_field.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'register_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context)=>LoginCubit(),
      child: BlocBuilder<LoginCubit, AuthState>(
        builder: (context, state) {
          LoginCubit cubit = BlocProvider.of<LoginCubit>(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(25.sp, 0, 25.sp, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 35.sp,),
                      Row(
                        children: [
                          Text(context.loc.initSession, style: TextStyle(fontSize: 28.sp, fontFamily: "Poppins", fontWeight: FontWeight.w500,),),
                        ],
                      ),
                      SizedBox(height: 10.sp,),
                      FittedBox(fit: BoxFit.scaleDown, child: Text(context.loc.helloAgain, style: TextStyle(fontSize: 20.sp, fontFamily: "Poppins", fontWeight: FontWeight.w500, color: Colors.black38),)),
                      SizedBox(height: 40.sp,),
                      ReactiveForm(
                        formGroup: cubit.loginForm,
                        child: Column(
                          children: [
                            ReactiveTextField(
                              validationMessages: {
                                'required': (error) => context.loc.requiredMessage,
                                'email': (error) => context.loc.emailMessage,
                              },
                              formControlName: 'email',
                              decoration: GStyles.formDecoration.copyWith(labelText: context.loc.email),
                            ),
                            SizedBox(height: 16.sp),
                            CustomRxTextField(formControlName: 'password', labelText: context.loc.password, hideText: true,)
                          ],
                        ),
                      ),
                      SizedBox(height: 20.sp,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ResetPasswordScreen()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(context.loc.forgotPass, style: GStyles.normalTextStyle.copyWith(fontSize: 16.sp),),
                            Icon(Icons.arrow_forward, color: GStyles.primaryColor,)
                          ],
                        ),
                      ),
                      SizedBox(height: 45.sp,),
                      LargeButton(
                        text: context.loc.login,
                        loading: state.onLoading,
                        onPressed: (){
                          if(!state.onLoading && cubit.loginForm.valid) {
                            cubit.login(
                            onLoginSuccess: () {Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const LayoutScreen()));},
                          );
                          }
                        },
                      ),
                      SizedBox(height: 14.sp,),
                      LargeButton(
                        text: context.loc.toContinue,
                        color: Colors.white,
                        onPressed: state.onLoading ? null : (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const LayoutScreen()));},
                      ),
                      SizedBox(height: 50.sp,),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                        },
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Row(
                            children: [
                              Text(context.loc.notRegistered, style: GStyles.normalTextStyle,),
                              SizedBox(width: 10.sp,),
                              Text(context.loc.createAccount, style: GStyles.normalTextStyle.copyWith(color: GStyles.primaryColor),)
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
        }
      ),
    );
  }
}

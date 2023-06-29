import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/repositories/auth_repository.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:crimat_app/src/shared/utils/utils.dart';
import 'package:crimat_app/src/shared/widgets/custom_reactive_text_field.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool onLoading = false;
  bool resetSuccessful = false;
  bool changedSuccessful = false;
  FormGroup resetPasswordForm = FormGroup({
    "email": FormControl<String>(validators: [Validators.required, Validators.email],),
    "reset_password_token": FormControl<String>(validators: [Validators.required,], disabled: true),
    "new_password": FormControl<String>(validators: [Validators.required,], disabled: true),
    "confirm_password": FormControl<String>(disabled: true),
  },
    validators: [Validators.mustMatch('new_password', 'confirm_password')]
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.sp, 0, 25.sp, 0),
          child: !changedSuccessful ? SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 35.sp,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: (){Navigator.of(context).pop();},
                      icon: const Icon(Icons.arrow_back_outlined, color: Colors.black,),
                    ),
                    Text(
                      context.loc.forgotPass,
                      style: GStyles.normalTextStyle.copyWith(color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Text(
                  context.loc.resetPasswordExplanation,
                  style: TextStyle(fontSize: 20.sp, fontFamily: "Poppins", fontWeight: FontWeight.w500, color: Colors.black38),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 50.sp,),
                ReactiveForm(
                  formGroup: resetPasswordForm,
                  child: Column(
                    children: [
                      CustomRxTextField(formControlName: 'email', labelText: context.loc.email),
                      SizedBox(height: 40.sp,),
                      if(resetSuccessful) Column(
                        children: [
                          CustomRxTextField(formControlName: 'reset_password_token', labelText: context.loc.code),
                          CustomRxTextField(formControlName: 'new_password', labelText: context.loc.newPassword),
                          CustomRxTextField(formControlName: 'confirm_password', labelText: context.loc.confirmPassword)
                        ],
                      ),
                      ReactiveFormConsumer(
                        builder: (context, form, child){
                          return LargeButton(
                            loading: onLoading,
                            text: context.loc.submit,
                            onPressed: form.valid || form.disabled ? (){
                              if(form.valid){
                                if(!resetSuccessful){
                                  _onResetPassword();
                                }
                                else{
                                  _onChangePassword();
                                }
                              }
                            } : null,
                          );
                        }
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ) : Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${context.loc.successPasswordChanged}!', textAlign: TextAlign.center, style: GStyles.bigTextStyle.copyWith(fontSize: 34.sp, color: Colors.black),),
                SizedBox(height: 50.sp),
                LargeButton(
                  text: context.loc.accept,
                  onPressed: (){Navigator.of(context).pop();},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onResetPassword()async{
    setState(() {
      onLoading = true;
      resetPasswordForm.markAsDisabled();
    });
    try{
      await AuthRepository().resetPassword(resetPasswordForm.control('email').value);
      setState(() {
        onLoading = false;
        resetSuccessful = true;
        resetPasswordForm.markAsEnabled();
      });
    }catch(error){
      UtilFunctions.printToast(message: error.toString());
      setState(() {
        onLoading = false;
        resetPasswordForm.control('email').markAsEnabled();
      });
    }
  }

  _onChangePassword()async{
    setState(() {
      onLoading = true;
      resetPasswordForm.markAsDisabled();
    });
    try{
      Map<String, dynamic> body = Map<String, dynamic>.from(resetPasswordForm.value);
      body.remove('confirm_password');
      await AuthRepository().changePassword(body);
      setState(() {
        onLoading = false;
        changedSuccessful = true;
      });
    }catch(error){
      UtilFunctions.printToast(message: error.toString());
      setState(() {
        onLoading = false;
        resetPasswordForm.markAsEnabled();
      });
    }
  }
}

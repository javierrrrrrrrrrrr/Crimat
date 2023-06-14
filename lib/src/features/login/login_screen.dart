import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(25.sp, 0, 25.sp, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 96.05.sp,),
              Row(
                children: [
                  Text(context.loc.initSession, style: TextStyle(fontSize: 28.sp, fontFamily: "Poppins", fontWeight: FontWeight.w500,),),
                ],
              ),
              SizedBox(height: 10.sp,),
              FittedBox(fit: BoxFit.scaleDown,child: Text(context.loc.helloAgain, style: TextStyle(fontSize: 20.sp, fontFamily: "Poppins", fontWeight: FontWeight.w500, color: Colors.black38),)),
              SizedBox(height: 40.sp,),
              TextField(
                decoration: GStyles.formDecoration.copyWith(labelText: context.loc.email),
              ),
              SizedBox(height: 16.sp),
              TextField(
                decoration: GStyles.formDecoration.copyWith(labelText: context.loc.password),
              ),
              SizedBox(height: 20.sp,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(context.loc.forgotPass, style: GStyles.normalTextStyle.copyWith(fontSize: 16.sp),),
                  Icon(Icons.arrow_forward, color: GStyles.primaryColor,)
                ],
              ),
              SizedBox(height: 45.sp,),
              LargeButton(text: context.loc.login, onPressed: (){}),
              SizedBox(height: 14.sp,),
              LargeButton(text: context.loc.toContinue, onPressed: (){}, color: Colors.white,),
              SizedBox(height: 150.sp,),
              Row(
                children: [
                  Text(context.loc.notRegistered, style: GStyles.normalTextStyle,),
                  SizedBox(width: 10.sp,),
                  Text(context.loc.createAccount, style: GStyles.normalTextStyle.copyWith(color: GStyles.primaryColor),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

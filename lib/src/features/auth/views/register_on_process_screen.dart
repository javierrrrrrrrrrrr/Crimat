import 'package:crimat_app/resources/app_images.dart';
import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/features/home/home.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterOnProcessScreen extends StatelessWidget {
  const RegisterOnProcessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppImages.registerOnProcess),
                SizedBox(height: 10.sp,),
                Text('${context.loc.thanks}!', textAlign: TextAlign.center, style: GStyles.bigTextStyle.copyWith(fontSize: 34.sp, color: Colors.black),),
                SizedBox(height: 5.sp,),
                Text(context.loc.registerOnProcess, textAlign: TextAlign.center, style: GStyles.bigTextStyle.copyWith(fontSize: 14.sp, color: Colors.black),),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0,0.8),
            child: LargeButton(
              text: context.loc.toContinue,
              onPressed: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeView()));
              },
            ),
          ),
        ],
      ),
    );
  }
}

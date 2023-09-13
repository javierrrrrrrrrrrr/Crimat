import 'package:crimat_app/resources/app_images.dart';
import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/shared/widgets/large_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterOnProcessScreen extends StatelessWidget {
  const RegisterOnProcessScreen({Key? key}) : super(key: key);

  static const String name = 'register_on_process_screen';

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
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  "Gracias",
                  textAlign: TextAlign.center,
                  style: GStyles.bigTextStyle
                      .copyWith(fontSize: 34.sp, color: Colors.black),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  "Su registro se esta procesando.\n Sera notificado una vez termine el proceso",
                  textAlign: TextAlign.center,
                  style: GStyles.bigTextStyle
                      .copyWith(fontSize: 14.sp, color: Colors.black),
                ),
              ],
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: LargeButton(
                text: "Continuar", onPressed: () => context.go('/home')),
          ),
        ],
      ),
    );
  }
}

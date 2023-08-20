import 'package:crimat_app/src/features/splash/splash_cubit.dart';
import 'package:crimat_app/src/features/splash/splash_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../resources/app_images.dart';
import '../../shared/widgets/error_dialog.dart';
import '../auth/screens/login_screen.dart';
import 'intro_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String name = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit()..init(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state) async {
          if (state.status == SplashStatus.leaded) {
            if (state.isLogin == false) {
              context.pushReplacementNamed(IntroScreen.name);
            } else {
              context.pushReplacementNamed(LoginScreen.name);
            }
          }

          if (state.status == SplashStatus.error) {
            showDialog(
              context: context,
              builder: (context) => ErrorDialog(
                content: state.error!,
              ),
            );
          }
        },
        buildWhen: (state, newState) => newState.status == SplashStatus.loading,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: Column(
              children: [
                Expanded(
                  child: Image.asset(AppImages.splashLogo),
                ),
                Padding(
                  padding: EdgeInsets.all(21.sp),
                  child: Text(
                    'CRIMAT PROFESSIONAL',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        fontSize: 16.sp),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

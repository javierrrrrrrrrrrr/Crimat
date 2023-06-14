import 'package:crimat_app/resources/app_images.dart';
import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/features/splash/splash_cubit.dart';
import 'package:crimat_app/src/features/splash/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => SplashCubit(),
      child: BlocConsumer<SplashCubit, SplashState>(
        listener: (context, state){
          SplashCubit cubit = BlocProvider.of<SplashCubit>(context);
          switch (state.status){
            case SplashStatus.loading : {
              cubit.onLoading();
            }
            break;
            case SplashStatus.onError : {
              cubit.error(context);
            }
            break;
            case SplashStatus.onSuccess : {
              cubit.onSuccess(context);
            }
          }
        },
        buildWhen: (state, newState) => newState.status ==  SplashStatus.loading,
        builder: (context, state){
          BlocProvider.of<SplashCubit>(context).onLoading();
          return Scaffold(
            backgroundColor: GStyles.primaryColor,
            // appBar: AppBar(title: Text('App'),),
              body: Column(
                children: [
                  Expanded(
                    child: Image.asset(AppImages.splashLogo),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21.sp),
                    child: Text('CRIMAT PROFESSIONAL', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Inter', fontSize: 16.sp),),
                  )
                ],
              )
          );
        },
      )
    );
  }
}
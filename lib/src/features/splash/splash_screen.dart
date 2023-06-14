import 'package:crimat_app/src/features/splash/splash_cubit.dart';
import 'package:crimat_app/src/features/splash/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          return const Scaffold(
            // appBar: AppBar(title: Text('App'),),
              body: Center(
                child: CircularProgressIndicator(color: Colors.blue,),
              )
          );
        },
      )
    );
  }
}
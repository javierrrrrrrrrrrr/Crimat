import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'layout_cubit.dart';
import 'layout_state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LayoutCubit>(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(title: Text(context.loc.app_title,), centerTitle: true,),
            body: selectedScreen(state),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.index,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: '', ),
                BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
              ],
              onTap: (newIndex){
                BlocProvider.of<LayoutCubit>(context).changeScreen(newIndex);
              },
            ),
          );
        }
      ),
    );
  }

  Widget selectedScreen(LayoutState currentScreen){
    switch(currentScreen){
      case LayoutState.home:
        return Center(
          child: Text('HOME', style: TextStyle(fontSize: 32.sp, color: Colors.black),),
        );
      default:
        return Center(
          child: Text('PAGE', style: TextStyle(fontSize: 32.sp, color: Colors.black),),
        );
    }
  }
}

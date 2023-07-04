import 'package:crimat_app/resources/app_icons.dart';
import 'package:crimat_app/resources/general_styles.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/home.dart';
import 'layout_cubit.dart';
import 'layout_state.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LayoutCubit>(
      create: (context) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(builder: (context, state) {
        return Scaffold(
          body: selectedScreen(state.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: state.selectedIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(state.selectedIndex == 0
                    ? AppIcons.homeSelected
                    : AppIcons.home),
                label: context.loc.home,
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(state.selectedIndex == 1
                      ? AppIcons.historySelected
                      : AppIcons.history),
                  label: context.loc.history),
              BottomNavigationBarItem(
                  icon: buyingCar(3, state.selectedIndex),
                  label: context.loc.buy),
              BottomNavigationBarItem(
                  icon: Image.asset(state.selectedIndex == 3
                      ? AppIcons.favoriteSelected
                      : AppIcons.favorite),
                  label: context.loc.favorites),
              BottomNavigationBarItem(
                  icon: Image.asset(state.selectedIndex == 4
                      ? AppIcons.profileSelected
                      : AppIcons.profile),
                  label: context.loc.profile),
            ],
            onTap: (newIndex) {
              BlocProvider.of<LayoutCubit>(context).changeScreen(newIndex);
            },
          ),
        );
      }),
    );
  }

  Widget selectedScreen(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const HomeView();
      case 1:
        return Center(
          child: Text(
            'Historial',
            style: TextStyle(fontSize: 32.sp, color: Colors.black),
          ),
        );
      case 2:
        return Center(
          child: Text(
            'Carrito',
            style: TextStyle(fontSize: 32.sp, color: Colors.black),
          ),
        );
      default:
        return Center(
          child: Text(
            'PAGE',
            style: TextStyle(fontSize: 32.sp, color: Colors.black),
          ),
        );
    }
  }

  Widget buyingCar(int elements, int selectedIndex) {
    bool isSelected = selectedIndex == 2;
    return Stack(
      children: [
        Image.asset(isSelected ? AppIcons.buySelected : AppIcons.buy),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                color: isSelected ? Colors.white : GStyles.primaryColor,
                borderRadius: BorderRadius.circular(50),
                border: Border.fromBorderSide(
                    BorderSide(color: GStyles.primaryColor))),
            child: Text(
              elements.toString(),
              style: GStyles.normalTextStyle.copyWith(
                  color: isSelected ? GStyles.primaryColor : Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

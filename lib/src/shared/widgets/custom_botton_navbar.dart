import 'package:crimat_app/src/features/layout/layout_cubit.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../resources/app_icons.dart';
import '../../../resources/general_styles.dart';

class CustomBottonNavigationBar extends StatelessWidget {
  const CustomBottonNavigationBar({
    super.key,
  });

  void onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/history');
        break;
      case 2:
        context.go('/cart');
        break;
      case 3:
        context.go('/favotites');
        break;
      case 4:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final layoutCubitState = context.watch<LayoutCubit>().state;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      currentIndex: layoutCubitState.selectedIndex,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(layoutCubitState.selectedIndex == 0
              ? AppIcons.homeSelected
              : AppIcons.home),
          label: context.loc.home,
        ),
        BottomNavigationBarItem(
            icon: Image.asset(layoutCubitState.selectedIndex == 1
                ? AppIcons.historySelected
                : AppIcons.history),
            label: context.loc.history),
        BottomNavigationBarItem(
            icon: buyingCar(3, layoutCubitState.selectedIndex),
            label: context.loc.buy),
        BottomNavigationBarItem(
            icon: Image.asset(layoutCubitState.selectedIndex == 3
                ? AppIcons.favoriteSelected
                : AppIcons.favorite),
            label: context.loc.favorites),
        BottomNavigationBarItem(
            icon: Image.asset(layoutCubitState.selectedIndex == 4
                ? AppIcons.profileSelected
                : AppIcons.profile),
            label: context.loc.profile),
      ],
      onTap: (newIndex) {
        onItemTapped(newIndex, context);
        BlocProvider.of<LayoutCubit>(context).changeScreen(newIndex);
      },
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

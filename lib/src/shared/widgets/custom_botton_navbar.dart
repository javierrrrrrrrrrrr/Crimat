import 'package:crimat_app/src/features/layout/layout_cubit.dart';
import 'package:crimat_app/src/features/layout/layout_state.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../resources/app_icons.dart';
import '../../../resources/general_styles.dart';
import '../../features/favorites/presentation/bloc/favorite_bloc.dart';
import '../../features/historial/presentation/bloc/historial_bloc/historial_bloc.dart';
import '../../features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';

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
    return BlocBuilder<CartBloc, CartState>(
        builder: (context, state) => state.maybeWhen(
              error: (message) => const SizedBox(),
              loaded: (cart) =>
                  customNavbar(layoutCubitState, context, cart.product.length),
              addWarning: (cart) =>
                  customNavbar(layoutCubitState, context, cart.product.length),
              orElse: () => customNavbar(layoutCubitState, context, 0),
            ));

    // );
  }

  dynamic customNavbar(
      LayoutState layoutCubitState, BuildContext context, int index) {
    return Stack(
      children: [
        BottomNavigationBar(
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
                icon: buyingCar(index, layoutCubitState.selectedIndex),
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
            if (newIndex == 1) {
              context.read<HistorialBloc>().add(const HistorialEvent.load());
            }
            if (newIndex == 3) {
              context.read<FavoriteBloc>().add(const FavoriteEvent.load());
            }
            onItemTapped(newIndex, context);
            BlocProvider.of<LayoutCubit>(context).changeScreen(newIndex);
          },
        ),
        Positioned(
          top: 2.h,
          right: 205.r,
          child: Container(
            alignment: Alignment.center,
            width: 18.w,
            height: 18.h,
            decoration: BoxDecoration(
                color: GStyles.primaryColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.fromBorderSide(
                    BorderSide(color: GStyles.primaryColor))),
            child: Text(
              index.toString(),
              style: GStyles.normalTextStyle.copyWith(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

Widget buyingCar(int elements, int selectedIndex) {
  bool isSelected = selectedIndex == 2;
  return Image.asset(isSelected ? AppIcons.buySelected : AppIcons.buy);
}

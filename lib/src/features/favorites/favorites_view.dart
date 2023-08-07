import 'package:crimat_app/src/features/favorites/presentation/bloc/favorite_bloc.dart';
import 'package:crimat_app/src/features/favorites/presentation/view/widget/favorito_card.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/home/products/producto_model.dart';
import '../../shared/utils/utils.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../home/presentation/view/widget/almacen_seleccion_carrusel.dart';
import '../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({
    super.key,
  });

  static const String name = 'favotites_view';

  @override
  Widget build(BuildContext context) {
    final blocCart = context.read<CartBloc>();
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () => Container,
            confirMassage: () => UtilFunctions.alertCustomNotification(
                context, blocCart.selectedProduct),
            successAddedToCart: () => UtilFunctions.printToast(
                message: context.loc.productSuccessfullyAddedToCart,
                shorttime: true),
            selectIdalmacenToAdd: () =>
                UtilFunctions.showConfimationAlmacen(context));
      },
      builder: (context, state) {
        return BlocBuilder<FavoriteBloc, FavoriteState>(
          builder: (context, state) => state.when(
              updatePositionCheck: (position) => Container(),
              initial: () => Container(),
              loading: () {
                return const CustomLoadingFavoriteList();
              },
              loaded: (list) => MainWidget(listfavorite: list),
              error: (message) => Container(),
              noLogedUserState: () => const NoUserLogedWidget()),
        );
      },
    );
  }
}

class CustomLoadingFavoriteList extends StatelessWidget {
  const CustomLoadingFavoriteList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          SizedBox(
            height: 120.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 20.h,
              child: const Text("Tus Favoritos"),
            ),
          ),
          SizedBox(
            height: 300.h,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  //  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: LoadingAlmacenSeleccionCard(isfavoriteview: true),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NoUserLogedWidget extends StatelessWidget {
  const NoUserLogedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 80.h,
        width: 350.w,
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const Text(
              "Para poder guardar tus favoritos, es necesario que inicies sesión en la aplicación."),
        )),
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
    required this.listfavorite,
  });

  final List<ProductModel> listfavorite;

  @override
  Widget build(BuildContext context) {
    return CarruselListVerticalConfg(
        title: "Tus Favoritos",
        itemcount: listfavorite.length,
        itemBuilder: (BuildContext context, int index) {
          return FavoriteCard(
            favorito: listfavorite[index],
          );
        });
  }
}

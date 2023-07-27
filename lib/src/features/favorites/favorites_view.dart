import 'package:crimat_app/src/features/favorites/presentation/bloc/favorite_bloc.dart';
import 'package:crimat_app/src/features/favorites/presentation/view/widget/favorito_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/home/products/producto_model.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({
    super.key,
  });

  static const String name = 'favotites_view';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, state) => state.when(
          initial: () => Container(),
          loading: () => Container(),
          loaded: (list) => MainWidget(listfavorite: list),
          error: (message) => Container(),
          noLogedUserState: () => const NoUserLogedWidget()),
    );
  }
}

class NoUserLogedWidget extends StatelessWidget {
  const NoUserLogedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
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

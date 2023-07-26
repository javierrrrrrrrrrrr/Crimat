import 'package:crimat_app/src/features/favorites/presentation/bloc/favorite_bloc.dart';
import 'package:crimat_app/src/features/favorites/presentation/view/widget/favorito_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          error: (message) => Container()),
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

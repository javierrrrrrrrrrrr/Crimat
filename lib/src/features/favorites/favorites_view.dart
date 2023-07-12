import 'package:crimat_app/src/features/favorites/view/widget/favorito_card.dart';
import 'package:flutter/material.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({
    super.key,
  });

  static const String name = 'favotites_view';

  @override
  Widget build(BuildContext context) {
    return CarruselListVerticalConfg(
        title: "Tus Favoritos",
        itemcount: 4,
        itemBuilder: (BuildContext context, int index) {
          return const FavoriteCard();
        });
  }
}

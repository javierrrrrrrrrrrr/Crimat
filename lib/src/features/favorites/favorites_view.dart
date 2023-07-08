import 'package:crimat_app/src/features/favoritos/view/widget/favorito_card.dart';
import 'package:flutter/material.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({
    super.key,
  });

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

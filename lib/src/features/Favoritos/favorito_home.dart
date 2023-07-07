import 'package:crimat_app/src/features/favoritos/view/widget/favorito_card.dart';
import 'package:flutter/material.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class FavoritoView extends StatelessWidget {
  const FavoritoView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CarruselListVerticalConfg(
      titulo: "Tus Favoritos",
      itemcount: 4,
      child: FavoriteCard(),
    );
  }
}

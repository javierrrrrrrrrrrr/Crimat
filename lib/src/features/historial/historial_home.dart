import 'package:crimat_app/src/features/historial/view/widget/historial_card.dart';
import 'package:flutter/material.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';

class HistorialView extends StatelessWidget {
  const HistorialView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //usar la propiedad CardWidthpadding para modificar el ancho de la carta en la lista
    return const CarruselListVerticalConfg(
      titulo: "Tus Historial",
      itemcount: 4,
      child: HisorialCard(),
    );
  }
}

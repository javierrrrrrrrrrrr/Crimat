import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/direccion_address_row.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/shopping_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../home/presentation/view/widget/products_details_widgets/option_buttoms.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({
    super.key,
  });

  static const String name = 'shopping_cart_view';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 125.h,
          child: const DireccionAddressRow(),
        ),
        SizedBox(
          height: 740.h,
          child: CarruselListVerticalConfg(
              havesubtitle: true,
              title: "Tu Carrito",
              itemcount: 8,
              itemBuilder: (BuildContext context, int index) {
                return const ShoppingCartWidget();
              }),
        ),
        //como es un stack se usa este sizbox para que ocupe todo el espacio de la pantalla para que a la hora de ubicar el ultimo widget se ubique odnde debe de lo contrario solo llega hasta donde el listview
        const SizedBox(
          height: double.infinity,
        ),
        const Positioned(
          bottom: 0,
          child: OptionButtoms(isShopping: true),
        ),
      ],
    );
  }
}

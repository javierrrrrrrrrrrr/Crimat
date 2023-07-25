import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/historial/historial_model.dart';
import 'details_card.dart';

class CustomCardProdcutsDetailsColum extends StatelessWidget {
  const CustomCardProdcutsDetailsColum({
    super.key,
    required this.datos,
  });

  final OrdenModel datos;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280.h,
        width: 300.w,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: datos.products.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    height: 14.h,
                  ),
                  DetailsCard(
                    image: datos.products[index].imagen,
                    name: datos.products[index].name,
                    price: datos.products[index].price,
                    quantity: datos.products[index].quantity,
                  ),
                ],
              );
            }));
  }
}

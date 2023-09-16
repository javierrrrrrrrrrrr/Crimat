import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/payment/payment_with_token/payment_model.dart';
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
            itemCount: datos.productos.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    height: 14.h,
                  ),
                  DetailsCard(
                    image: datos.productos[index].imagen,
                    name: datos.productos[index].nombre,
                    price: datos.productos[index].precio,
                    quantity: datos.productos[index].cantidad,
                  ),
                ],
              );
            }));
  }
}

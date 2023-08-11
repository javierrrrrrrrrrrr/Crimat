import 'package:crimat_app/src/features/perfil/presentation/view/widget/custom_delivery_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/profile/profile_model.dart';
import '../../../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({Key? key, required this.datos}) : super(key: key);

  static const String name = 'delivery_address';

  final ProfileModel datos;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 745.h,
        // color: Colors.red,
        child: CarruselListVerticalConfg(
          ischeckout: true,
          itemcount: datos.direcciones.length,
          title: "Direcciones de entrega",
          itemBuilder: (BuildContext context, int index) {
            return CustomDeliveryCard(datos: datos, index: index);
          },
        ),
      ),
      const SizedBox(
        height: double.infinity,
      ),
      Positioned(
          bottom: 0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 127.h,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFD63E30).withOpacity(0.4),
              ),
              CusotmButtom(
                name: "Agregar dirección",
                height: 45.h,
                width: 280.w,
                ispraimary: true,
              ),
            ],
          ))
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/historial/historial_model.dart';

class OrdenDetails extends StatelessWidget {
  const OrdenDetails({
    super.key,
    required this.datos,
  });

  final OrdenModel datos;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Informacion de la orden",
          style: TextStyle(fontSize: 14.sp),
        ),
        SizedBox(
          height: 12.h,
        ),

        //QUeda pendiente estructurar bien la direccion
        const CustomInfoRow(
          step: "Direccion de envio",
          value: "3 Newbridge court,Chino Hills CA 91709,United State",
        ),
        SizedBox(
          height: 0.h,
        ),
        CustomInfoRow(
          step: "Descuento",
          value: "${datos.discount}",
        ),
        SizedBox(
          height: 0.h,
        ),
        CustomInfoRow(
          step: "Costo de envio",
          value: "\$${datos.shippingCost}",
        ),
        SizedBox(
          height: 0.h,
        ),
        CustomInfoRow(
          step: "Impustos",
          value: "\$${datos.tax}",
        ),
        SizedBox(
          height: 0.h,
        ),
        CustomInfoRow(
          step: "Monto total",
          value: "\$${datos.totalAmount}",
        ),
      ],
    );
  }
}

class CustomInfoRow extends StatelessWidget {
  const CustomInfoRow({
    super.key,
    required this.step,
    required this.value,
  });

  final String step;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 120,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(step, style: TextStyle(fontSize: 14.sp))),
        ),
        SizedBox(
          width: 20.w,
        ),
        SizedBox(
          height: 30,
          width: 180,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                value,
                style: TextStyle(fontSize: 14.sp),
              )),
        ),
      ],
    );
  }
}

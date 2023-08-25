import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../models/payment/payment_with_token/payment_model.dart';
import '../../../../../shared/widgets/card_sking.dart';
import '../../../../../shared/widgets/cusotm_buttom_product.dart';
import '../historial_details_screen.dart';
import 'custom_date.dart';
import 'custom_details_colum.dart';

class HisorialCard extends StatelessWidget {
  const HisorialCard({
    super.key,
    required this.data,
  });

  final OrdenModel data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CardSking(cardwidth: 375),
        Positioned(
          left: 10.w,
          child: ColumDetails(
            orderNumber: data.numOrden,
            quantity: data.cantidad,
            totalAmount: data.montoTotal,
            warehouse: data.almacen,
          ),
        ),
        Positioned(
          right: 15.w,
          top: 15.h,
          child: CustomDate(date: data.fechaOrden),
        ),
        Positioned(
          right: 15.w,
          bottom: 20.h,
          child: CusotmButtom(
            onPressed: () {
              final args = data;
              context.pushNamed(
                HistorialDetails.name,
                extra: args,
                //extra: producto
              );
            },
            height: 32.h,
            width: 90.w,
            name: "Detalles",
            ispraimary: false,
          ),
        ),
      ],
    );
  }
}

import 'package:crimat_app/src/features/historial/presentation/view/widget/custom_date.dart';
import 'package:crimat_app/src/features/historial/presentation/view/widget/custom_details_colum.dart';
import 'package:crimat_app/src/features/historial/presentation/view/widget/custom_product_details_colum.dart';
import 'package:crimat_app/src/features/historial/presentation/view/widget/orden_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/payment/payment_with_token/payment_model.dart';
import '../../../../shared/widgets/card_sking.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../home/presentation/view/widget/custom_title.dart';

class HistorialDetails extends StatelessWidget {
  static const String name = 'hisorial_view_details';

  const HistorialDetails({super.key, required this.datos});

  final OrdenModel datos;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 20.h),
            child: const CustomTitle(
              title: "Tu Historial",
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CardSking(
                    cardheight: 734.h,
                    cardwidth: 375.w,
                  ),
                ),
                Positioned(
                  top: 20.h,
                  left: 40,
                  child: ColumDetails(
                    isvisibleamount: false,
                    orderNumber: datos.numOrden,
                    quantity: datos.cantidad,
                    totalAmount: datos.montoTotal,
                    warehouse: datos.almacen,
                  ),
                ),
                Positioned(
                  top: 32.h,
                  right: 45,
                  child: CustomDate(
                    date: datos.fechaOrden,
                  ),
                ),
                Positioned(
                  left: 40.w,
                  top: 130.h,
                  child: CustomCardProdcutsDetailsColum(datos: datos),
                ),
                Positioned(
                  left: 40.w,
                  top: 420.h,
                  child: OrdenDetails(datos: datos),
                ),
                Positioned(
                  bottom: 35.h,
                  right: 50.w,
                  child: CusotmButtom(
                    height: 32.h,
                    width: 90.w,
                    name: "Recoger",
                    ispraimary: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

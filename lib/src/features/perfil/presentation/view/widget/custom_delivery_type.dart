import 'package:crimat_app/src/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/payment/shipping_model.dart';
import '../../../../../shared/widgets/card_sking.dart';

class CustomDeliveryType extends StatelessWidget {
  const CustomDeliveryType(
      {super.key, required this.model, required this.modelselected});

  final List<ShippingModel> model;
  final ShippingModel modelselected;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CardSking(
        cardheight: 160.h,
        cardwidth: 550.w,
      ),
      Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                        width: 180.w,
                        child: Text(
                          "Nombre ",
                          style: TextStyle(fontSize: 16.sp),
                        )),
                    SizedBox(width: 20.w),
                    Text(modelselected.nombre,
                        style: TextStyle(fontSize: 16.sp)),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 180.w,
                        child: Text(
                          "Descripcion ",
                          style: TextStyle(fontSize: 16.sp),
                        )),
                    SizedBox(width: 20.w),
                    Text(modelselected.descripcion,
                        style: TextStyle(fontSize: 16.sp)),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 180.w,
                        child: Text(
                          "Costo ",
                          style: TextStyle(fontSize: 16.sp),
                        )),
                    SizedBox(width: 20.w),
                    Text('${modelselected.costo} USD',
                        style: TextStyle(fontSize: 16.sp)),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    SizedBox(
                        width: 180.w,
                        child: Text("Tiempo de entrega ",
                            style: TextStyle(fontSize: 16.sp))),
                    SizedBox(width: 20.w),
                    Text('${modelselected.tiempoEntrega} dias',
                        style: TextStyle(fontSize: 16.sp)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      Positioned(
        right: 15.w,
        top: 15.h,
        child: GestureDetector(
          onTap: () {
            //quitar el mayor igual a 1 cuando terminem
            if (model.length > 1) {
              UtilFunctions.showDireccionChoise(context, model);
            }
          },
          child: Text(
            "Cambiar",
            style: TextStyle(
                fontSize: 16.sp,
                color: model.length == 1
                    ? Colors.grey
                    : Theme.of(context).primaryColor),
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        left: 5,
        child: Row(
          children: [
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              value: true,
              onChanged: (value) {},
              materialTapTargetSize: MaterialTapTargetSize.padded,
            ),
            Text(
              "Usar este tipo de envio",
              style: TextStyle(fontSize: 16.sp),
            )
          ],
        ),
      )
    ]);
  }
}

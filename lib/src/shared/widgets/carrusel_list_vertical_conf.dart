import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/view/widget/custom_title.dart';

class CarruselListVerticalConfg extends StatelessWidget {
  const CarruselListVerticalConfg({
    super.key,
    required this.child,
    required this.titulo,
    this.leftpadding,
    this.rightpadding,
    this.toppadding,
    this.bottompadding,
    required this.itemcount,
    this.verticalpadding,
    this.cardWidthpadding,
    required this.onItemBuilt,
  });

  final String titulo;
  final double? leftpadding;
  final double? rightpadding;
  final double? toppadding;
  final double? bottompadding;
  final int itemcount;
  final double? verticalpadding;
  final double? cardWidthpadding;
  final void Function(int)
      onItemBuilt; // Nueva función de devolución de llamada

  final Widget Function(BuildContext, int) child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: bottompadding ?? 0.w,
            right: rightpadding ?? 0.w,
            left: leftpadding ?? 25.w,
            top: toppadding ?? 60.h,
          ),
          child: CustomTitle(titulo: titulo),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: itemcount,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                onItemBuilt(index);
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: cardWidthpadding ?? 22.w,
                      vertical: verticalpadding ?? 5.h),
                  child: child(context, index),
                ); // Llamamos a la función anónima child con los parámetros requeridos);
              }),
        )
      ],
    );
  }
}

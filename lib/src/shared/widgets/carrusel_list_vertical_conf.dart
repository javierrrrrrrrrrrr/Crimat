import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/home/view/widget/custom_title.dart';

class CarruselListVerticalConfg extends StatelessWidget {
  const CarruselListVerticalConfg({
    super.key,
    required this.itemBuilder,
    required this.title,
    required this.itemcount,
    this.verticalPadding,
    this.cardWidthPadding,
    this.padding,
    this.isperfil,
  });

  final String title;
  final EdgeInsetsGeometry? padding;
  final int itemcount;
  final double? verticalPadding;
  final double? cardWidthPadding;
  final bool? isperfil;

  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: padding ??
              EdgeInsets.only(
                bottom: 0.w,
                right: 0.w,
                left: 25.w,
                top: 60.h,
              ),
          child: CustomTitle(title: title),
        ),
        SizedBox(height: isperfil == true ? 230.h : 0.h),
        Expanded(
          child: ListView.builder(
            itemCount: itemcount,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: cardWidthPadding ?? 22.w,
                    vertical: verticalPadding ?? 5.h),
                child: itemBuilder(context, index),
              ); // Llamamos a la función anónima child con los parámetros requeridos);
            },
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'loading_widget/loading_card_carrusel.dart';
import 'main_card_carrusel.dart';

class MainProdcutCarrusel extends StatelessWidget {
  const MainProdcutCarrusel({
    super.key,
    //  this.isloading,
  });

  final bool isloading = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GridView.builder(
        padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
        physics: const BouncingScrollPhysics(),
        itemCount: 10, // Número de elementos a mostrar
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.sp,
          crossAxisSpacing: 20.sp,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (BuildContext context, int index) {
          // Construir cada celda de la cuadrícula
          return isloading == false
              ? const LoadingCardCarusel()
              : const MainCardCarrusel();
        },
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'almacen_product_filter_widget.dart';
import 'almacen_seleccion_carrusel.dart';
import 'main_product_carrusel.dart';

class AlmacenWidgetPrincipal extends StatelessWidget {
  const AlmacenWidgetPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 28.w, top: 77.h),
          child: Text(
            'Seleccione almacén',
            style: TextStyle(
              fontSize: 20.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: SizedBox(
            height: 152.h,
            width: MediaQuery.of(context).size.width,
            child: const AlmacenSeleccionCarusel(),
          ),
        ),
        const AlmacenProductFilter(),
        const MainProdcutCarrusel(),
      ],
    );
  }
}

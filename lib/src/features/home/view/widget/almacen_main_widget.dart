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
          padding: EdgeInsets.only(left: 28.sp, top: 77.sp),
          child: Text(
            'Seleccione almacén',
            style: TextStyle(fontSize: 20.sp, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.sp),
          child: Container(
            height: 152.sp,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: const AlmacenSeleccionCarusel(),
          ),
        ),
        const AlmacenProductFilter(),
        const MainProdcutCarrusel(),
      ],
    );
  }
}

import 'package:crimat_app/src/features/home/view/widget/almacen_product_filter_widget.dart';
import 'package:crimat_app/src/features/home/view/widget/almacen_seleccion_carrusel.dart';
import 'package:crimat_app/src/features/home/view/widget/main_product_carrusel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28.w, top: 20.h),
            child: Text(
              'Seleccione almacén',
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Theme.of(context).secondaryHeaderColor),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: Container(
              height: 152.h,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).primaryColor,
              child: const AlmacenSeleccionCarusel(),
            ),
          ),
          const AlmacenProductFilter(),
          const MainProdcutCarrusel(),
        ],
      ),
    );
  }
}

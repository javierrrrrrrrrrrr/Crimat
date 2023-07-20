import 'package:crimat_app/src/features/home/presentation/view/widget/almacen_product_filter_widget.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/almacen_seleccion_carrusel.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/custom_title.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/main_product_carrusel.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/app_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const String name = 'home_view';

  @override
  Widget build(BuildContext context) {
    String? token = AppInfo().accessToken;
    print(token);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28.w, top: 20.h),
            child: CustomTitle(
              title: context.loc.selectWarehouse,
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
          const Expanded(child: MainProdcutCarrusel()),
        ],
      ),
    );
  }
}

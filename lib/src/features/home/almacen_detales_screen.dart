import 'package:crimat_app/src/features/home/presentation/view/widget/almacen_details_widgets/almacen_info_details_widget.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_details_header.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/home/almacen/almacen_model.dart';

class AlmacenDetails extends StatelessWidget {
  const AlmacenDetails({Key? key, required this.almacen}) : super(key: key);

  static const String name = 'almacen_detail_screen';

  final AlmacenModel almacen;

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      almacen: almacen,
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
    required this.almacen,
  });

  final AlmacenModel almacen;

  @override
  Widget build(BuildContext context) {
    //  final cartbloc = context.read<CartBloc>();
    return Padding(
      padding: EdgeInsets.only(top: 70.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductDetailsHeder(isALmacen: true),
            SizedBox(height: 20.h),
            almacen.imagen != null && almacen.imagen != ''
                ? ProductPictureContainer(url: almacen.imagen!)
                : const ProductPictureContainer(
                    url:
                        "https://via.placeholder.com/150x150.png?text=Imagen+no+disponible",
                    notimage: true),
            SizedBox(height: 20.h),
            AlmacenInfo(almacen: almacen),
          ],
        ),
      ),
    );
  }
}

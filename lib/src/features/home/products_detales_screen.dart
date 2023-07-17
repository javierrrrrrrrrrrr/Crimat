import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/option_buttoms.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_details_colum.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_details_header.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/home/products/producto_model.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({Key? key, required this.product}) : super(key: key);

  static const String name = 'product_detail_screen';

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    // final ProductModel producto =
    //     ModalRoute.of(context)?.settings.arguments as ProductModel;
    return Padding(
      padding: EdgeInsets.only(top: 70.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductDetailsHeder(),
            SizedBox(height: 20.h),
            ProductPictureContainer(url: product.image),
            SizedBox(height: 20.h),
            ProductDetailsColum(
              description: product.description,
              name: product.name,
              price: product.basePrice,
            ),
            const OptionButtoms(),
          ],
        ),
      ),
    );
  }
}

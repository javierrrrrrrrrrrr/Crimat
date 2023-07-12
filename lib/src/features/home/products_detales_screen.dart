import 'package:crimat_app/src/features/home/presentation/view/widget/prdoct_details_widgets/option_buttoms.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/prdoct_details_widgets/products_details_colum.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/prdoct_details_widgets/products_details_header.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/prdoct_details_widgets/products_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> queryParams =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Padding(
      padding: EdgeInsets.only(top: 70.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductDetailsHeder(),
          SizedBox(height: 20.h),
          ProductPictureContainer(url: queryParams['image']),
          SizedBox(height: 20.h),
          ProductDetailsColum(
            description: queryParams["description"],
            name: queryParams["name"],
            price: queryParams["price"],
          ),
          const OptionButtoms(),
        ],
      ),
    );
  }
}

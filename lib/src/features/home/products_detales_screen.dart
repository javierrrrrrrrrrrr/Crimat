import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/option_buttoms.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_details_colum.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_details_header.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/products_details_widgets/products_picture_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../models/home/almacen/almacen_model.dart';
import '../../models/home/products/producto_model.dart';
import '../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails(
      {Key? key, required this.product, this.isAlmaenScreen, this.almacen})
      : super(key: key);

  static const String name = 'product_detail_screen';

  final ProductModel product;
  final bool? isAlmaenScreen;
  final AlmacenModel? almacen;

  @override
  Widget build(BuildContext context) {
    return MainWidget(
      product: product,
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final cartbloc = context.read<CartBloc>();
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
            OptionButtoms(
              isProductdetails: true,
              onPressedPraimary: () =>
                  cartbloc.add(CartEvent.addedProduct(product: product)),
            ),
          ],
        ),
      ),
    );
  }
}

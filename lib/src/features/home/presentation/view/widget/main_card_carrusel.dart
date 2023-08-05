import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../models/home/products/producto_model.dart';
import '../../../../../shared/app_info.dart';
import '../../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../../favorites/presentation/bloc/favorite_bloc.dart';
import '../../../../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../../../shoppping_cart/presentation/bloc/check_bloc/check_bloc.dart';
import '../../../products_detales_screen.dart';
import '../../bloc/product_bloc/product_bloc.dart';
import 'custom_picture_container.dart';

class MainCardCarrusel extends StatelessWidget {
  const MainCardCarrusel({
    super.key,
    required this.producto,
  });

  final ProductModel producto;

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.read<CartBloc>();
    String? token = AppInfo().accessToken;
    final productbloc = context.read<ProductBloc>();
    final favoritebloc = context.read<FavoriteBloc>();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // Cambiar la dirección de la sombra
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  final args = producto;

                  context.pushNamed(ProductsDetails.name, extra: args);
                },
                child: producto.image == ""
                    ? const PictureContainer(
                        isanotherurl:
                            "https://via.placeholder.com/150x150.png?text=Imagen+no+disponible",
                      )
                    : PictureContainer(pictureUrl: producto.image),
              ),
              Padding(
                padding: EdgeInsets.only(left: 14.0.w, top: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      producto.name,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 16.sp, color: Colors.black),
                    ),
                    Text("\$${producto.basePrice}",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 17.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            )),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Center(
                  child: CusotmButtom(
                onPressed: () {
                  context.read<CartBloc>().add(CartEvent.addedProduct(
                        product: producto,
                      ));

                  context.read<CheckBloc>().add(
                      CheckEvent.updateList(productlist: cartBloc.productList));
                },
                //
                ispraimary: true,
                name: context.loc.addToCart,
                height: 35.h,
                width: 160.w,
              ))
            ],
          ),
          Positioned(
            right: 10.w,
            top: 10.h,
            child: GestureDetector(
              onTap: () {
                print("sss");
                if (token != null) {
                  productbloc.add(ProductEvent.updatePrductFavorite(
                    isfavorite: !(producto.favorite!),
                    productid: producto.id,
                  ));
                  if (producto.favorite == false) {
                    favoritebloc
                        .add(FavoriteEvent.addedProduct(product: producto));
                  } else {
                    favoritebloc
                        .add(FavoriteEvent.removedProduct(product: producto));
                  }
                }
              },
              child: FavoriteCircle(
                isfavorite: producto.favorite ?? false,
                productid: producto.id,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FavoriteCircle extends StatelessWidget {
  const FavoriteCircle({
    super.key,
    this.isfavorite,
    required this.productid,
  });

  final bool? isfavorite;
  final int productid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.sp,
      height: 35.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: isfavorite == true ? Colors.red : Colors.grey,
          size: 20,
        ),
      ),
    );
  }
}

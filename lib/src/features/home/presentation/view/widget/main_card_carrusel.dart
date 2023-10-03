import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../models/home/products/producto_model.dart';
import '../../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../../favorites/presentation/bloc/favorite_bloc.dart';
import '../../../../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../../products_detales_screen.dart';
import '../../bloc/product_bloc/product_bloc.dart';
import 'circle_favorite_main_widget.dart';
import 'custom_picture_container.dart';

class MainCardCarrusel extends StatelessWidget {
  const MainCardCarrusel({
    super.key,
    required this.producto,
  });

  final ProductModel producto;

  @override
  Widget build(BuildContext context) {
    //  final cartBloc = context.read<CartBloc>();

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
            offset: const Offset(0, 3),
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
                onTap: () async {
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

                  // context.read<CheckBloc>().add(
                  //     CheckEvent.updateList(productlist: cartBloc.productList));
                },
                //
                ispraimary: true,
                name: "Añadir al carrito",
                height: 35.h,
                width: 160.w,
              ))
            ],
          ),
          //ajustar esto

          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loadedSuccess: (_, __, havetoken) {
                    return havetoken != ''
                        ? CircleFavoiriteMainWidget(
                            productbloc: productbloc,
                            producto: producto,
                            favoritebloc: favoritebloc)
                        : Container();
                  },
                  orElse: () => Container());
            },
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/home/products/producto_model.dart';
import '../../../../../shared/utils/utils.dart';
import '../../../../favorites/presentation/bloc/favorite_bloc.dart';
import '../../bloc/product_bloc/product_bloc.dart';
import 'favorite_circle_widget.dart';

class CircleFavoiriteMainWidget extends StatelessWidget {
  const CircleFavoiriteMainWidget({
    super.key,
    required this.productbloc,
    required this.producto,
    required this.favoritebloc,
  });

  final ProductBloc productbloc;
  final ProductModel producto;
  final FavoriteBloc favoritebloc;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10.w,
      top: 10.h,
      child: GestureDetector(
        onTap: () {
          productbloc.add(ProductEvent.updatePrductFavorite(
            isfavorite: !(producto.favorite!),
            productid: producto.id,
          ));
          if (producto.favorite == false) {
            favoritebloc.add(FavoriteEvent.addedProduct(product: producto));
            UtilFunctions.printToast(message: 'Producto agregado a favorito');
          } else {
            favoritebloc.add(FavoriteEvent.removedProduct(product: producto));
            UtilFunctions.printToast(message: 'Producto eliminado de favorito');
          }
        },
        child: FavoriteCircle(
          isfavorite: producto.favorite ?? false,
          productid: producto.id,
        ),
      ),
    );
  }
}

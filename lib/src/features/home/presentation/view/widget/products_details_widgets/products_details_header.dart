import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../models/home/products/producto_model.dart';
import '../../../../../favorites/presentation/bloc/favorite_bloc.dart';
import '../../../bloc/product_bloc/product_bloc.dart';
import '../circle_favorite_main_widget.dart';

class ProductDetailsHeder extends StatelessWidget {
  const ProductDetailsHeder({
    super.key,
    this.isALmacen,
    this.producto,
  });

  final ProductModel? producto;

  final bool? isALmacen;
  @override
  Widget build(BuildContext context) {
    final productbloc = context.read<ProductBloc>();
    final favoritebloc = context.read<FavoriteBloc>();
    return Row(
      children: [
        SizedBox(
          width: 20.w,
        ),
        GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(Icons.arrow_back)),
        SizedBox(
          width: 80.w,
        ),
        isALmacen == true
            ? const Text('Detalles del Almacen')
            : const Text("Detalles del Producto"),
        SizedBox(
          width: 50.w,
        ),
        isALmacen == true
            ? Container()
            : BlocBuilder<ProductBloc, ProductState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      loadedSuccess: (_, __, havetoken) {
                        return havetoken != ''
                            ? CircleFavoiriteMainWidget(
                                productbloc: productbloc,
                                producto: producto!,
                                favoritebloc: favoritebloc)
                            : Container();
                      },
                      orElse: () => Container());
                },
              )
      ],
    );
  }
}

import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:crimat_app/src/shared/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/utils/utils.dart';
import '../../../../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../bloc/almacen_bloc/almacen_bloc.dart';

import '../../bloc/product_bloc/product_bloc.dart';
import 'loading_widget/loading_card_carrusel.dart';
import 'main_card_carrusel.dart';
import 'no_selected_almacen_widget.dart';

class MainProdcutCarrusel extends StatelessWidget {
  const MainProdcutCarrusel({super.key});

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();
    return BlocListener<AlmacenBloc, AlmacenState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (_) => productBloc.add(const ProductEvent.toInitialState()),
        );
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) => state.when(
            initial: () => NoSelectedAlmacenwidget(
                message: context.loc.warehouseProductsSelection),
            loading: () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: GridView.builder(
                    padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10, // Número de elementos a mostrar
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.sp,
                      crossAxisSpacing: 20.sp,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      // Construir cada celda de la cuadrícula
                      return const LoadingCardCarusel();
                    },
                  ),
                ),
            loadedSuccess: (productos, _, __) {
              if (productos.isEmpty) {
                return const NoSelectedAlmacenwidget(
                    message:
                        "No hay productos que concidan con esa categoria en este almacen");
              } else {
                return BlocListener<CartBloc, CartState>(
                  listener: (context, state) {
                    state.whenOrNull(
                        successAddedToCart: () => UtilFunctions.printToast(
                            message: context.loc.productSuccessfullyAddedToCart,
                            shorttime: true));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: GridView.builder(
                      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                      physics: const BouncingScrollPhysics(),
                      itemCount:
                          productos.length, // Número de elementos a mostrar
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.sp,
                        crossAxisSpacing: 20.sp,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        // Construir cada celda de la cuadrícula
                        return MainCardCarrusel(
                          producto: productos[index],
                        );
                      },
                    ),
                  ),
                );
              }
            },
            failure: (error) => CustomErrorWidget(
                  isproducterror: true,
                  message: error,
                  // onPressed: (){
                  //       context.read<ProductBloc>().add(ProductEvent.loadProducts(id: id));

                  // },
                )),
      ),
    );
  }
}

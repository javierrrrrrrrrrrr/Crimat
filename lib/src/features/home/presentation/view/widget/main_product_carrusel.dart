import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../bloc/almacen_bloc/almacen_bloc.dart';

import '../../bloc/product_bloc/product_bloc.dart';
import 'loading_widget/loading_card_carrusel.dart';
import 'main_card_carrusel.dart';
import 'no_selected_almacen_widget.dart';

class MainProdcutCarrusel extends StatelessWidget {
  const MainProdcutCarrusel({
    super.key,
    //  this.isloading,
  });

  final bool isloading = true;

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
          initial: () => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 150),
            child: NoSelectedAlmacenwidget(
                message: "Seleccione un almacén para ver los productos."),
          ),
          loading: () => Expanded(
            child: Padding(
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
          ),
          loadedSuccess: (productos, _) {
            if (productos.isEmpty) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 170.h,
                ),
                child: const NoSelectedAlmacenwidget(
                    message:
                        "No hay productos que concidan con esa categoria en este almacen"),
              );
            } else {
              return Expanded(
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
          failure: (error) => SizedBox(
            child: Text(error),
          ),
        ),
      ),
    );
  }
}

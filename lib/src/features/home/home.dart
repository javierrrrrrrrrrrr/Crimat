import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/almacen_product_filter_widget.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/almacen_seleccion_carrusel.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/custom_title.dart';
import 'package:crimat_app/src/features/home/presentation/view/widget/main_product_carrusel.dart';
import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/utils/utils.dart';
import '../../shared/widgets/custom_error_widget.dart';
import '../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const String name = 'home_view';

  @override
  Widget build(BuildContext context) {
    final blocCart = context.read<CartBloc>();
    return BlocConsumer<CartBloc, CartState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () => Container,
            confirMassage: () => UtilFunctions.alertCustomNotification(
                context, blocCart.selectedProduct));
      },
      builder: (context, state) {
        return BlocBuilder<AlmacenBloc, AlmacenState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const MainWidget(),
              failure: (message) => CustomErrorWidget(
                  message: message,
                  onPressed: () {
                    context.read<AlmacenBloc>().add(const AlmacenEvent.load());
                  }),
              selectedAlmacen: (almacenes, index) => const MainWidget(),
            );
          },
        );
      },
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 28.w, top: 20.h),
            child: CustomTitle(
              title: context.loc.selectWarehouse,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: Container(
              height: 152.h,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).primaryColor,
              child: const AlmacenSeleccionCarrusel(),
            ),
          ),
          const AlmacenProductFilter(),
          const Expanded(child: MainProdcutCarrusel()),
        ],
      ),
    );
  }
}

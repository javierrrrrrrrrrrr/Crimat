import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/payment/request_data_model.dart';
import '../../../../models/payment/shipping_model.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../perfil/presentation/bloc/profile_bloc.dart';
import '../../../perfil/presentation/view/widget/custom_delivery_card.dart';
import '../../../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../../shoppping_cart/presentation/bloc/check_bloc/check_bloc.dart';
import '../../../shoppping_cart/utils/shopping_card_aux.dart';
import '../bloc/payment_bloc.dart';

class TipoEnvioDireccion extends StatelessWidget {
  const TipoEnvioDireccion({
    super.key,
    required this.data,
  });

  final List<ShippingModel> data;
  @override
  Widget build(BuildContext context) {
    List<ProductoCantidadModel> productoslistcart = [];
    final paymentbloc = context.read<PaymentBloc>();
    final checkbloc = context.read<CheckBloc>();
    final cartbloc = context.read<CartBloc>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(data[0].nombre),
        const CustomDireccionSelection(),
        //pasar,le la direcion y el tipo de envio
        CustomOptionButtom(
            cartbloc: cartbloc,
            productoslistcart: productoslistcart,
            checkbloc: checkbloc,
            paymentbloc: paymentbloc),
      ],
    );
  }
}

class CustomDireccionSelection extends StatelessWidget {
  const CustomDireccionSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return state.maybeWhen(
        orElse: () => Container(),
        success: (profile) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: CustomDeliveryCard(
            isCheckout: true,
            datos: profile,
            index: 0,
          ),
        ),
      );
    });
  }
}

class CustomOptionButtom extends StatelessWidget {
  const CustomOptionButtom({
    super.key,
    required this.cartbloc,
    required this.productoslistcart,
    required this.checkbloc,
    required this.paymentbloc,
  });

  final CartBloc cartbloc;
  final List<ProductoCantidadModel> productoslistcart;
  final CheckBloc checkbloc;
  final PaymentBloc paymentbloc;

  @override
  Widget build(BuildContext context) {
    return CusotmButtom(
      onPressed: () {
        final Cart cart = Cart(product: cartbloc.productList);
        for (int i = 0;
            i < cart.productQuantity(cart.product).keys.length;
            i++) {
          productoslistcart.add(
            ProductoCantidadModel(
                producto:
                    cart.productQuantity(cart.product).keys.elementAt(i).id,
                cantidad:
                    cart.productQuantity(cart.product).values.elementAt(i)),
          );
        }

        List<ProductoCantidadModel> auxproductoslistcart = [];
        for (int i = 0; i < checkbloc.checklist.length - 1; i++) {
          if (checkbloc.checklist[i] == true) {
            auxproductoslistcart.add(productoslistcart[i]);
          }
        }
        RequestModel fillRequestModel() {
          int almacen = cartbloc.productList[0].idAlmacen;
          int tipoEnvio = 1;
          List<int> direcciones = [5];

          return RequestModel(
            productos: auxproductoslistcart,
            almacen: almacen,
            tipoEnvio: tipoEnvio,
            direcciones: direcciones,
          );
        }

        paymentbloc.add(PaymentEvent.startedPhase1(datos: fillRequestModel()));
      },
      height: 45.h,
      width: 380.w,
      name: "Continuar",
      ispraimary: true,
    );
  }
}

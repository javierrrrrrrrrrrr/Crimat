import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/payment/request_data_model.dart';
import '../../../../models/payment/shipping_model.dart';
import '../../../home/presentation/view/widget/products_details_widgets/option_buttoms.dart';
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
        OptionButtoms(
          onPressedPraimary: () async {
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

            paymentbloc
                .add(PaymentEvent.startedPhase1(datos: fillRequestModel()));
          },
          isProductdetails: true,
        ),
      ],
    );
  }
}

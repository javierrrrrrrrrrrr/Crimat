import 'package:crimat_app/src/features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/direccion_address_row.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/no_product_in_shopping_cart.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/shopping_cart_widget.dart';
import 'package:crimat_app/src/features/shoppping_cart/utils/shopping_card_aux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../models/payment/request_data_model.dart';
import '../../shared/utils/utils.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../home/presentation/view/widget/products_details_widgets/option_buttoms.dart';
import '../payment/presentation/bloc/payment_bloc.dart';
import '../payment/presentation/view/payment_aux_view.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({
    super.key,
  });

  static const String name = 'shopping_cart_view';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.maybeWhen(
          error: (message) {
            context.pop();
            UtilFunctions.printToast(message: message, shorttime: false);
          },
          phase1InProgress: () => showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => const Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator()),
          ),
          phase1Complated: (paymentdata) {
            context.pushNamed(PaymentAuxView.name);
            context.pop();
          },
          orElse: (() => Container()),
        );
      },
      builder: (context, state) {
        return BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return state.maybeWhen(
                successAddedToCart: () => Container(),
                orElse: () => const NoProductsInShoppingCart(),
                loaded: (cart) => MainWidget(cart: cart),
                error: ((message) => const Text("Error")),
                addWarning: (cart) => MainWidget(cart: cart));
          },
        );
      },
    );
  }
}

class MainWidget extends StatelessWidget {
  const MainWidget({
    super.key,
    required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    final paymentbloc = context.read<PaymentBloc>();
    final cartbloc = context.read<CartBloc>();
    return Stack(
      children: [
        Positioned(
          top: 125.h,
          child: const DireccionAddressRow(),
        ),
        SizedBox(
          height: 690.h,
          child: CarruselListVerticalConfg(
              havesubtitle: true,
              title: "Tu Carrito",
              itemcount: cart.productQuantity(cart.product).keys.length,
              itemBuilder: (BuildContext context, int index) {
                return ShoppingCartWidget(
                  carcantidad: cart
                      .productQuantity(cart.product)
                      .values
                      .elementAt(index),
                  producto:
                      cart.productQuantity(cart.product).keys.elementAt(index),
                  index: index,
                );
              }),
        ),
        //como es un stack se usa este sizbox para que ocupe todo el espacio de la pantalla para que a la hora de ubicar el ultimo widget se ubique odnde debe de lo contrario solo llega hasta donde el listview
        const SizedBox(
          height: double.infinity,
        ),
        Positioned(
          bottom: 0,
          child: OptionButtoms(
              isShopping: true,
              total: cart.subtotal,
              onPressedPay: () async {
                //datos de pruebas
                RequestModel fillRequestModel() {
                   
                    
                  List<ProductoCantidadModel> productos = [
                    ProductoCantidadModel(producto: 1, cantidad: 5),
                  ];
                  int almacen = cartbloc.productList[0].idAlmacen;
                  int tipoEnvio = 1;
                  List<int> direcciones = [5];

                  return RequestModel(
                    productos: productos,
                    almacen: almacen,
                    tipoEnvio: tipoEnvio,
                    direcciones: direcciones,
                  );
                }

                paymentbloc
                    .add(PaymentEvent.startedPhase1(datos: fillRequestModel()));
              }),
        ),
      ],
    );
  }
}

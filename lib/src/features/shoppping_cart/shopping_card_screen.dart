import 'package:crimat_app/src/features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/direccion_address_row.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/no_product_in_shopping_cart.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/shopping_cart_widget.dart';
import 'package:crimat_app/src/features/shoppping_cart/utils/shopping_card_aux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import '../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../home/presentation/view/widget/products_details_widgets/option_buttoms.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({
    super.key,
  });

  static const String name = 'shopping_cart_view';

  @override
  Widget build(BuildContext context) {
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
                print("Inicar checkout");

                await initPaymentSheet();
                try {
                  dynamic repuesta =
                      await Stripe.instance.presentPaymentSheet();
                  //  print(repuesta.toString());
                } catch (e) {
                  print('erorrrrrrrrr$e');
                }
              }),
        ),
      ],
    );
  }
}

Future<void> initPaymentSheet() async {
  try {
    // 1. create payment intent on the server

    // 2. initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: const SetupPaymentSheetParameters(
        allowsDelayedPaymentMethods: false,
        // Enable custom flow
        customFlow: true,
        // Main params
        merchantDisplayName: 'Flutter Stripe Store Demo',
        paymentIntentClientSecret:
            "pi_3NctEkJ9WnJbugu50nu7UHde_secret_1zEJARKpYy1Pt2rzbkKNjkBIZ",
        // // Customer keys
        customerEphemeralKeySecret:
            "ek_test_YWNjdF8xTjFCQkVKOVduSmJ1Z3U1LFlEQUxjaDQxTjZidTQ3UVg1T3M1VlJkSlh3UkRCdWI_00faNTE74v",
        customerId: "cus_OPigY8op4TRUXN",

        // Extra options

        // applePay: PaymentSheetApplePay(
        //   merchantCountryCode: "US",
        // ),
        // googlePay:
        //     PaymentSheetGooglePay(merchantCountryCode: "US", testEnv: true),
        style: ThemeMode.dark,

        // setupIntentClientSecret:
        //     "pi_3NctEkJ9WnJbugu50nu7UHde_secret_1zEJARKpYy1Pt2rzbkKNjkBIZ",
      ),
    );
  } catch (e) {
    print(e);

    rethrow;
  }
}

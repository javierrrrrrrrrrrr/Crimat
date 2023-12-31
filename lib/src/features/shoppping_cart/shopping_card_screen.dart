import 'package:crimat_app/src/features/shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/direccion_address_row.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/no_product_in_shopping_cart.dart';
import 'package:crimat_app/src/features/shoppping_cart/presentation/view/widget/shopping_cart_widget.dart';
import 'package:crimat_app/src/features/shoppping_cart/utils/shopping_card_aux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../shared/utils/utils.dart';
import '../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../home/presentation/view/widget/products_details_widgets/option_buttoms.dart';
import '../payment/presentation/bloc/payment_bloc.dart';
import '../payment/presentation/view/payment_aux_view.dart';
import '../perfil/presentation/bloc/profile_bloc.dart';

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
          phase0InProgress: () => UtilFunctions.loading(context),
          phase1InProgress: () => UtilFunctions.loading(context),
          phase0InProgressWithoutToken: () => UtilFunctions.loading(context),
          phase0Complated: (_) {
            context.pushNamed(PaymentAuxView.name);
            context.pop();
          },
          phase0WithoutTokenComplated: (_) {
            context.pushNamed(PaymentAuxView.name);
            context.pop();
          },
          phase1Complated: (data) => context.pop(),
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
    final profilebloc = context.read<ProfileBloc>();

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
                final prefs = await SharedPreferences.getInstance();
                final token = prefs.getString('token');

                if (token != '') {
                  profilebloc.add(const ProfileEvent.load());
                  paymentbloc.add(const PaymentEvent.startedPhase0());

                  profilebloc.stream.listen((state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: (_) {
                        profilebloc.add(const ProfileEvent.readDireccion());
                      },
                    );
                  });
                } else {
                  paymentbloc
                      .add(const PaymentEvent.startedPhase0WithoutToken());
                }
              }),
        ),
      ],
    );
  }
}

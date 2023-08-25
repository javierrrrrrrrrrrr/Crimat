import 'dart:convert';

import 'package:crimat_app/src/features/payment/presentation/view/payment_completed_widget.dart';
import 'package:crimat_app/src/features/payment/presentation/view/payment_select_envio_tipe_widget.dart';
import 'package:crimat_app/src/features/payment/presentation/view/payment_without_token_first_step.dart';
import 'package:crimat_app/src/features/payment/presentation/view/payment_without_token_form_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import '../../../../models/historial/historial_model.dart';
import '../../../../models/payment/payment_with_token/payment_model.dart';
import '../../../historial/presentation/bloc/historial_bloc/historial_bloc.dart';
import '../../../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../bloc/payment_bloc.dart';
import 'check_out_view.dart';

class PaymentAuxView extends StatelessWidget {
  const PaymentAuxView({super.key});

  static const String name = 'payment_aux_view';

  @override
  Widget build(BuildContext context) {
    final cartbloc = context.read<CartBloc>();
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () => Container(),
            error: (message) =>
                Container(), //UtilFunctions.printToast(message: message),
            completed: () async {
              //salvar en almacenamiento intterno el hisotrial
              await saveInShardPreferens(context);
              cartbloc.add(const CartEvent.clearShoppingCart());
            });
      },
      builder: (context, state) {
        return BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => Container(),
              completed: () => const CompletedWidget(),
              phase1Complated: (paymentdata) => CheckoutView(
                paymentdata: paymentdata,
              ),
              phase0Complated: (data) => TipoEnvioDireccion(data: data),
              phase0WithoutTokenComplated: (data) =>
                  FirstStepWithoutTokenPayment(data: data),
              phase1InProgressWithoutToken: () =>
                  const FormForDataNoRegisterUser(),
              phase2WithoutTokenComplated: (datos) =>
                  CheckoutView(paymentdata: datos),
            );
          },
        );
      },
    );
  }

  Future<void> saveInShardPreferens(BuildContext context) async {
    final historialbloc = context.read<HistorialBloc>();
    final paymentbloc = context.read<PaymentBloc>();
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    List<OrdenModel> histopriallistdata = [];
    if (token == '' || token == null) {
      final storedHistorial = prefs.getString('historial_key');

      if (storedHistorial != null) {
        final historial = json.decode(storedHistorial) as List<dynamic>;
        histopriallistdata =
            historial.map((json) => OrdenModel.fromJson(json)).toList();
      }

      //agregar el nuevo
      final OrdenModel model = paymentbloc.payment!.orden;

      histopriallistdata.add(model);

      historialbloc.add(
          HistorialEvent.saveInStorageHistorial(historial: histopriallistdata));
    }
  }
}

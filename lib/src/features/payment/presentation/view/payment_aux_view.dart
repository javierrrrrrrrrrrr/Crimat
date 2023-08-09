import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/payment_bloc.dart';

class PaymentAuxView extends StatelessWidget {
  const PaymentAuxView({super.key});

  static const String name = 'payment_aux_view';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) {
        return state.when(
            initial: () => Container(),
            phase1InProgress: () => Container(),
            phase2InProgress: () => Container(),
            completed: () => Container(),
            cancelled: () => Container(),
            error: (messege) => Container(),
            phase1Complated: (paymentdata) => Container(
                  child: Center(child: Text(paymentdata.ephemeralKey)),
                ));
      },
    );
  }
}

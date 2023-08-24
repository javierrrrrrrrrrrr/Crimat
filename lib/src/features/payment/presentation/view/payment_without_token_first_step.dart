import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/payment/payment_with_token/shipping_model.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../perfil/presentation/bloc/profile_bloc.dart';
import '../../../perfil/presentation/view/widget/custom_delivery_type.dart';
import '../bloc/payment_bloc.dart';

class FirstStepWithoutTokenPayment extends StatelessWidget {
  const FirstStepWithoutTokenPayment({Key? key, required this.data})
      : super(key: key);

  final List<ShippingModel> data;

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    final paymentbloc = context.read<PaymentBloc>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => CustomDeliveryType(
                      model: data,
                      modelselected: data[data.indexWhere((shipping) =>
                              shipping.id ==
                              profilebloc.selectedShippingTypeid) +
                          1]),
                  changeCheckSuccess: (_, __) => CustomDeliveryType(
                      model: data,
                      modelselected: data[data.indexWhere((shipping) =>
                              shipping.id ==
                              profilebloc.selectedShippingTypeid) +
                          1]),
                  updateDeliveryTypeSeleccion: (id) => CustomDeliveryType(
                      model: data,
                      modelselected:
                          data[data.indexWhere((shipping) => shipping.id == id) + 1]));
            },
          ),
          SizedBox(
            height: 50.h,
          ),
          CusotmButtom(
            onPressed: () {
              paymentbloc.add(const PaymentEvent.startedPhase1WithoutToken());
            },
            height: 45.h,
            width: 380.w,
            name: "Continuar",
            ispraimary: true,
          )
        ],
      ),
    );
  }
}

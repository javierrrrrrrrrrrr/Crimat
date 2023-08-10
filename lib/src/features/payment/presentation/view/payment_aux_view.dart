import 'package:crimat_app/src/features/payment/presentation/view/payment_select_envio_tipe_widget.dart';
import 'package:crimat_app/src/shared/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/payment/payment_model.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../perfil/presentation/view/widget/custom_delivery_card.dart';
import '../bloc/payment_bloc.dart';

class PaymentAuxView extends StatelessWidget {
  const PaymentAuxView({super.key});

  static const String name = 'payment_aux_view';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentBloc, PaymentState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => Container(),
          error: (message) => UtilFunctions.printToast(message: message),
        );
      },
      builder: (context, state) {
        return BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            return state.when(
                initial: () => Container(),
                phase1InProgress: () => Container(),
                phase2InProgress: () => Container(),
                completed: () => Container(),
                cancelled: () => Container(),
                error: (messege) => Container(),
                phase1Complated: (paymentdata) => CheckoutView(
                      paymentdata: paymentdata,
                    ),
                phase0Complated: (data) => TipoEnvioDireccion(data: data),
                phase0InProgress: () => Container());
          },
        );
      },
    );
  }
}

class CheckoutView extends StatelessWidget {
  const CheckoutView({
    super.key,
    required this.paymentdata,
  });

  final PaymentModel paymentdata;

  @override
  Widget build(BuildContext context) {
    final paymentbloc = context.read<PaymentBloc>();

    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.92,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFFD63E30).withOpacity(0.4),
          child: Column(children: [
            SizedBox(
              height: 35.h,
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    // Acción cuando se presiona el botón de flecha hacia atrás
                  },
                ),
                SizedBox(
                  width: 120.w,
                ),
                const Text('Checkout')
              ],
            ),
            CusotmRowInfo(
                info: "Numero de Orden", valor: paymentdata.orden.numOrden),
            CusotmRowInfo(
                info: "Fecha de Orden", valor: paymentdata.orden.fechaOrden),
            CusotmRowInfo(
                info: "Nombre del Almacen", valor: paymentdata.orden.almacen),
            CusotmRowInfo(
                info: "Cantidad de prodcutos",
                valor: paymentdata.orden.cantidad.toString()),
            CusotmRowInfo(
                info: "Descuento",
                valor: paymentdata.orden.descuento == null
                    ? 0.toString()
                    : paymentdata.orden.descuento.toString()),
            CusotmRowInfo(
                info: "Impuesto", valor: paymentdata.orden.impuesto.toString()),
            CusotmRowInfo(
                info: "Costo de envio",
                valor: paymentdata.orden.costoEnvio.toString()),
            CusotmRowInfo(
                info: "Total", valor: paymentdata.orden.montoTotal.toString()),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomDeliveryCard(
                isCheckout: true,
                index: 1,
                apartado: paymentdata.orden.direcciones[0].apartado,
                codigopostal: paymentdata.orden.direcciones[0].codigoPostal,
                ciudad: paymentdata.orden.direcciones[0].ciudad,
                direccion: paymentdata.orden.direcciones[0].direccion,
                estado: paymentdata.orden.direcciones[0].estado,
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
            CusotmButtom(
              onPressed: () {
                paymentbloc.add(PaymentEvent.startedPhase2(context: context));
              },
              height: 45.h,
              width: 380.w,
              name: "Continuar",
              ispraimary: true,
            ),
          ]),
        ),
      ],
    );
  }
}

class CusotmRowInfo extends StatelessWidget {
  const CusotmRowInfo({
    super.key,
    required this.info,
    required this.valor,
  });

  final String info;
  final String valor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(info),
          Text(valor),
        ],
      ),
    );
  }
}

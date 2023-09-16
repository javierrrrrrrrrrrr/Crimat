import 'package:crimat_app/src/features/payment/presentation/view/widget/custom_row_info_check_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../models/payment/payment_with_token/payment_model.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../bloc/payment_bloc.dart';

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
                    paymentbloc.add(const PaymentEvent.startedPhase0());
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
            CusotmRowInfo(info: "Nombre", valor: paymentdata.orden.almacen),
            CusotmRowInfo(
                info: "Cantidad de productos",
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
            SizedBox(
              height: 100.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Divider(
                color: Colors.black.withOpacity(0.3),
                thickness: 1,
              ),
            ),
            CusotmRowInfo(
                info: "Total", valor: paymentdata.orden.montoTotal.toString()),
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

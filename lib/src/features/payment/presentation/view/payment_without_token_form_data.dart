import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../models/payment/payment_without_token/without_token_request_model.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../../shared/widgets/custom_reactive_text_field.dart';
import '../../../perfil/presentation/bloc/profile_bloc.dart';
import '../../../shoppping_cart/presentation/bloc/cart_bloc/cart_bloc.dart';
import '../../../shoppping_cart/presentation/bloc/check_bloc/check_bloc.dart';
import '../../../shoppping_cart/utils/shopping_card_aux.dart';
import '../bloc/payment_bloc.dart';

class FormForDataNoRegisterUser extends StatelessWidget {
  const FormForDataNoRegisterUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.read<CartBloc>();
    final paymentbloc = context.read<PaymentBloc>();
    final profilebloc = context.read<ProfileBloc>();
    final checkbloc = context.read<CheckBloc>();
    List<ProductoCantidadModel> productoslistcart = [];
    return ReactiveForm(
        formGroup: paymentbloc.unregisterUser,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                const Text('Datos del pago'),
                SizedBox(
                  height: 30.h,
                ),
                const CustomRxTextField(
                  formControlName: "nombre",
                  labelText: "nombre",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "apellidos",
                  labelText: "apellidos",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "email",
                  labelText: "email",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "telefono",
                  labelText: "telefono",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "estado",
                  labelText: "estado",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "direccion",
                  labelText: "direccion",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "codigo_postal",
                  labelText: "codigo postal",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "apartado",
                  labelText: "apartado",
                ),
                SizedBox(
                  height: 10.h,
                ),
                const CustomRxTextField(
                  formControlName: "ciudad",
                  labelText: "ciudad",
                ),
                SizedBox(
                  height: 10.h,
                ),
                CusotmButtom(
                  onPressed: () {
                    final formValue = paymentbloc.unregisterUser.value;
                    final Cart cart = Cart(product: cartBloc.productList);
                    for (int i = 0;
                        i < cart.productQuantity(cart.product).keys.length;
                        i++) {
                      productoslistcart.add(
                        ProductoCantidadModel(
                            producto: cart
                                .productQuantity(cart.product)
                                .keys
                                .elementAt(i)
                                .id,
                            cantidad: cart
                                .productQuantity(cart.product)
                                .values
                                .elementAt(i)),
                      );
                    }

                    List<ProductoCantidadModel> auxproductoslistcart = [];
                    for (int i = 0; i < checkbloc.checklist.length - 1; i++) {
                      if (checkbloc.checklist[i] == true) {
                        auxproductoslistcart.add(productoslistcart[i]);
                      }
                    }

                    final direccion = DireccionModelWithoutToken(
                        apartado: formValue['apartado'].toString(),
                        ciudad: formValue['ciudad'].toString(),
                        codigoPostal: formValue['codigo_postal'].toString(),
                        direccion: formValue['direccion'].toString(),
                        estado: formValue['estado'].toString());
                    final unregister = UnregisterModel(
                      apellidos: formValue['apellidos'].toString(),
                      email: formValue['email'].toString(),
                      nombre: formValue['nombre'].toString(),
                      telefono: formValue['telefono'].toString(),
                      direccion: direccion,
                    );

                    final request = OrderRequestModelWithoutToken(
                        almacen: cartBloc.productList[0].idAlmacen,
                        productos: auxproductoslistcart,
                        tipoEnvio: profilebloc.selectedShippingTypeid == null
                            ? paymentbloc.shippingMethods![0].id
                            : profilebloc.selectedShippingTypeid!,
                        unregister: unregister);

                    paymentbloc.add(
                        PaymentEvent.startedPhase2WithoutToken(datos: request));
                  },
                  height: 45.h,
                  width: 380.w,
                  name: "Continuar",
                  ispraimary: true,
                ),
                SizedBox(
                  height: 25.h,
                ),
              ],
            ),
          ),
        ));
  }
}

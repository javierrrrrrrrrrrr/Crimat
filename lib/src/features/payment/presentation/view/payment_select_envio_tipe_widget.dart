import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/payment/request_data_model.dart';
import '../../../../models/payment/shipping_model.dart';
import '../../../../models/profile/profile_model.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../perfil/presentation/bloc/profile_bloc.dart';
import '../../../perfil/presentation/view/delivery_address_view.dart';
import '../../../perfil/presentation/view/widget/custom_delivery_card.dart';
import '../../../perfil/presentation/view/widget/custom_delivery_type.dart';
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
    final profilebloc = context.read<ProfileBloc>();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () => Container(),
              );
              // loading: () => UtilFunctions.loading(context));
            },
            builder: (context, state) {
              return BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => Container(),
                      changeCheckSuccess: (_, __) => CustomDeliveryType(
                          model: data,
                          modelselected: data[data.indexWhere((shipping) =>
                                  shipping.id ==
                                  profilebloc.selectedShippingTypeid) +
                              1]),
                      updateDeliveryTypeSeleccion: (id) => CustomDeliveryType(
                          model: data,
                          modelselected: data[
                              data.indexWhere((shipping) => shipping.id == id) +
                                  1]));
                },
              );
            },
          ),
          SizedBox(
            height: 30.h,
          ),
          const CustomDireccionSelection(),
          SizedBox(
            height: 120.h,
          ),
          BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
            return state.maybeWhen(
              orElse: () => Container(),
              changeCheckSuccess: (_, __) => CustomOptionButtom(
                  cartbloc: cartbloc,
                  productoslistcart: productoslistcart,
                  checkbloc: checkbloc,
                  paymentbloc: paymentbloc),
              updateDeliveryTypeSeleccion: (_) => CustomOptionButtom(
                  cartbloc: cartbloc,
                  productoslistcart: productoslistcart,
                  checkbloc: checkbloc,
                  paymentbloc: paymentbloc),
            );
          }),
        ],
      ),
    );
  }
}

class CustomDireccionSelection extends StatelessWidget {
  const CustomDireccionSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return state.maybeWhen(
        orElse: () => Container(),
        updateDeliveryTypeSeleccion: (updatedId) => CustomDeliveryCard(
          cambiaronTap: () {
            context.pushNamed(DeliveryAddress.name,
                extra: profilebloc.profiledata);
          },
          isCheckout: true,
          datos: profilebloc.profiledata,
          index: findData(
              context, profilebloc.profiledata!, profilebloc.selectedId!),
        ),
        changeCheckSuccess: (data, profile) => CustomDeliveryCard(
          cambiaronTap: () {
            context.pushNamed(DeliveryAddress.name, extra: profile);
          },
          isCheckout: true,
          datos: profile,
          index: findData(context, profile, profilebloc.selectedId!),
        ),
      );
    });
  }

  int findData(context, ProfileModel profile, int selectedid) {
    int index = 0;
    //ajustar esto tambien
    for (int i = 0; i < profile.salones.length; i++) {
      if (selectedid == profile.salones[i].id) {
        index = i;
      }
    }
    return index;
  }
}

class CustomOptionButtom extends StatelessWidget {
  const CustomOptionButtom({
    super.key,
    required this.cartbloc,
    required this.productoslistcart,
    required this.checkbloc,
    required this.paymentbloc,
  });

  final CartBloc cartbloc;
  final List<ProductoCantidadModel> productoslistcart;
  final CheckBloc checkbloc;
  final PaymentBloc paymentbloc;

  @override
  Widget build(BuildContext context) {
    final profileBloc = context.read<ProfileBloc>();
    return CusotmButtom(
      onPressed: () {
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

          List<int> direcciones = [];
          direcciones.add(profileBloc.selectedId!);

          return RequestModel(
            productos: auxproductoslistcart,
            almacen: almacen,
            tipoEnvio: profileBloc.selectedShippingTypeid == null
                ? paymentbloc.shippingMethods![0].id
                : profileBloc.selectedShippingTypeid!,
            direcciones: direcciones,
          );
        }

        paymentbloc.add(PaymentEvent.startedPhase1(datos: fillRequestModel()));
      },
      height: 45.h,
      width: 380.w,
      name: "Continuar",
      ispraimary: true,
    );
  }
}

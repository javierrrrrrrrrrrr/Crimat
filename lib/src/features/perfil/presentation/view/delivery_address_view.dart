import 'package:crimat_app/src/features/perfil/presentation/view/widget/custom_delivery_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../models/profile/profile_model.dart';
import '../../../../shared/utils/utils.dart';
import '../../../../shared/widgets/carrusel_list_vertical_conf.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../bloc/profile_bloc.dart';
import 'add_address_view.dart';
import 'edit_address_view.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({Key? key, required this.datos}) : super(key: key);

  static const String name = 'delivery_address';

  final ProfileModel datos;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () => Container(),
            loading: () => UtilFunctions.loading(context),
            addAddress: () => context.pop(),
            failure: (massage) {
              context.pop();
              UtilFunctions.printToast(message: massage);
            });
      },
      builder: (context, state) {
        return BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => MainDeliveryAddress(datos: datos),
              goaddAddress: () => const AddAddressView(),
              goEditAddress: () => const EditAddressView(),
            );
          },
        );
      },
    );
  }
}

class MainDeliveryAddress extends StatelessWidget {
  const MainDeliveryAddress({
    super.key,
    required this.datos,
  });

  final ProfileModel datos;

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return Stack(children: [
      SizedBox(
        height: 660.h,
        // color: Colors.red,
        child: CarruselListVerticalConfg(
          ischeckout: true,
          itemcount: datos.salones.length,
          title: "Direcciones de entrega",
          itemBuilder: (BuildContext context, int index) {
            return CustomDeliveryCard(datos: datos, index: index);
          },
        ),
      ),
      const SizedBox(
        height: double.infinity,
      ),
      profilebloc.profiledata!.suscripcion.cantSalones >
              profilebloc.profiledata!.salones.length
          ? Positioned(
              bottom: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 127.h,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xFFD63E30).withOpacity(0.4),
                  ),
                  CusotmButtom(
                    onPressed: () {
                      profilebloc.add(const ProfileEvent.goNewAddress());
                    },
                    name: "Agregar dirección",
                    height: 45.h,
                    width: 280.w,
                    ispraimary: true,
                  ),
                ],
              ))
          : Container()
    ]);
  }
}

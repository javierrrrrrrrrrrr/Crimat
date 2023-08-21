import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/profile/profile_model.dart';
import '../../../../../shared/widgets/card_sking.dart';
import '../../bloc/profile_bloc.dart';

class CustomDeliveryCard extends StatelessWidget {
  const CustomDeliveryCard({
    super.key,
    this.datos,
    required this.index,
    this.isCheckout,
    this.direccion,
    this.ciudad,
    this.apartado,
    this.estado,
    this.codigopostal,
    this.cambiaronTap,
  });

  final ProfileModel? datos;
  final String? direccion;
  final String? ciudad;
  final String? apartado;
  final String? estado;
  final String? codigopostal;
  final bool? isCheckout;
  final void Function()? cambiaronTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return Stack(
      children: [
        CardSking(
          cardheight: 160.h,
          cardwidth: isCheckout == true ? 450.w : 375.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(datos!.salones[index].nombre,
                      style: TextStyle(fontSize: 16.sp)),
                  GestureDetector(
                    onTap: isCheckout == true
                        ? cambiaronTap
                        : () {
                            //navegar a la pagina de editar direccion de entrega
                            //actulizar el controlador con los valores de la direcion selecionada

                            actulizarControladores(context, index);

                            profilebloc.add(const ProfileEvent.goEditAddress());
                          },
                    child: Text(
                      isCheckout == true ? "Cambiar" : "Editar",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: 80.h,
                width: 250.w,
                // {datos!.salones[index].direccion.id}
                child: Text(
                  maxLines: 3,
                  '${datos!.salones[index].direccion.direccion}, ${datos!.salones[index].direccion.ciudad}, ${datos!.salones[index].direccion.estado} ${datos!.salones[index].direccion.postal}',
                  style: TextStyle(fontSize: 16.sp),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 5.w,
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => CustomMainRowWidget(
                  datos: datos,
                  index: index,
                  profilebloc: profilebloc,
                  id: profilebloc.selectedId!,
                ),
                // initial:() => CustomMainRowWidget(datos: datos, index: index, profilebloc: profilebloc, id: id,),
                changeCheckSuccess: (id, profile) => CustomMainRowWidget(
                  datos: datos,
                  index: index,
                  profilebloc: profilebloc,
                  id: id,
                ),
                // updateDeliveryTypeSeleccion: (_) => CustomMainRowWidget(
                //       datos: datos,
                //       index: index,
                //       profilebloc: profilebloc,
                //       id: profilebloc.selectedId!,
                // )
              );
            },
          ),
        )
      ],
    );
  }

  void actulizarControladores(BuildContext context, index) {
    final profilebloc = context.read<ProfileBloc>();
    final idselectedadrress =
        profilebloc.profiledata!.salones[index].direccion.id;

    SalonModel? data;

    for (int i = 0; i < profilebloc.profiledata!.salones.length; i++) {
      if (profilebloc.profiledata!.salones[i].direccion.id ==
          idselectedadrress) {
        data = profilebloc.profiledata!.salones[i];
      }
    }

    // final data =
    //     profilebloc.profiledata!.salones.direccion.firstWhere(
    //   (direccion) => direccion.id == idselectedadrress,
    // );

    profilebloc.addAddressForm.control('nombre').updateValue(data!.nombre);
    profilebloc.addAddressForm
        .control('direccion')
        .updateValue(data.direccion.direccion);
    profilebloc.addAddressForm
        .control('apartado')
        .updateValue(data.direccion.apartado);
    profilebloc.addAddressForm
        .control('ciudad')
        .updateValue(data.direccion.ciudad);
    profilebloc.addAddressForm
        .control('estado')
        .updateValue(data.direccion.estado);
    profilebloc.addAddressForm
        .control('codigo_postal')
        .updateValue(data.direccion.postal);
  }
}

class CustomMainRowWidget extends StatelessWidget {
  const CustomMainRowWidget({
    super.key,
    required this.datos,
    required this.index,
    required this.profilebloc,
    required this.id,
  });

  final ProfileModel? datos;
  final int id;
  final int index;
  final ProfileBloc profilebloc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Theme.of(context).primaryColor,
          value: datos!.salones[index].direccion.id == id ? true : false,
          onChanged: (value) {
            profilebloc.add(ProfileEvent.saveDireccion(
                id: datos!.salones[index].direccion.id));
          },
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Text(
          "Usar esta dirección",
          style: TextStyle(fontSize: 16.sp),
        )
      ],
    );
  }
}

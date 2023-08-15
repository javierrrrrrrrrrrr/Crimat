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
                  Text(datos!.firstName, style: TextStyle(fontSize: 16.sp)),
                  GestureDetector(
                    onTap: cambiaronTap,
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
                child: Text(
                  maxLines: 3,
                  '${datos!.direcciones[index].id} ${datos!.direcciones[index].direccion}, ${datos!.direcciones[index].ciudad}, ${datos!.direcciones[index].estado} ${datos!.direcciones[index].postal}',
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
                  orElse: () => Container(
                        child: const Text("sss"),
                      ),
                  // initial:() => CustomMainRowWidget(datos: datos, index: index, profilebloc: profilebloc, id: id,),
                  changeCheckSuccess: (id, profile) => CustomMainRowWidget(
                        datos: datos,
                        index: index,
                        profilebloc: profilebloc,
                        id: id,
                      ),
                  updateDeliveryTypeSeleccion: (_) => CustomMainRowWidget(
                        datos: datos,
                        index: index,
                        profilebloc: profilebloc,
                        id: profilebloc.selectedId!,
                      ));
            },
          ),
        )
      ],
    );
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
          value: datos!.direcciones[index].id == id ? true : false,
          onChanged: (value) {
            profilebloc.add(
                ProfileEvent.saveDireccion(id: datos!.direcciones[index].id));
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

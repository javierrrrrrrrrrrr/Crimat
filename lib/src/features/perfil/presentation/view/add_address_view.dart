import 'package:crimat_app/src/features/perfil/presentation/bloc/profile_bloc.dart';
import 'package:crimat_app/src/models/profile/new_salon_request_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../shared/widgets/cusotm_buttom_product.dart';
import '../../../../shared/widgets/custom_reactive_text_field.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key, this.isEditView});

  final bool? isEditView;

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return Center(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            isEditView == true ? "Editar Dirección" : "Nueva Dirección",
            style: TextStyle(fontSize: 21.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50.h,
          ),
          ReactiveForm(
            formGroup: profilebloc.addAddressForm,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  const CustomRxTextField(
                    formControlName: "nombre",
                    labelText: "name",
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
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          CusotmButtom(
            onPressed: () {
              final formValue = profilebloc.addAddressForm.value;
              if (profilebloc.addAddressForm.valid) {
                final direccion = DireccionModel(
                  direccion: formValue['direccion'].toString(),
                  apartado: formValue['apartado'].toString(),
                  ciudad: formValue['ciudad'].toString(),
                  estado: formValue['estado'].toString(),
                  codigoPostal: formValue['codigo_postal'].toString(),
                );

                final salon = SalonRequestModel(
                  nombre: formValue['nombre'].toString(),
                  direccion: direccion,
                );
                //print('Este es el nombre${salon.nombre}');
                profilebloc.add(ProfileEvent.addNewAddress(requestdata: salon));
                profilebloc.addAddressForm.reset();
              }
              //actulizar los falores del modelo
            },
            name: isEditView == true ? "Editar Direccion" : "Agregar Direccion",
            height: 60.h,
            width: 400.w,
            ispraimary: true,
            fontsize: 25.sp,
            lettersize: 550,

            /// isEnable: profilebloc.addAddressForm.valid,
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/profile/profile_model.dart';
import '../../../../../shared/widgets/card_sking.dart';

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
  });

  final ProfileModel? datos;
  final String? direccion;
  final String? ciudad;
  final String? apartado;
  final String? estado;
  final String? codigopostal;
  final bool? isCheckout;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardSking(
          cardheight: 150.h,
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
                  Text(isCheckout == true ? "Javier Diaz" : datos!.firstName,
                      style: TextStyle(fontSize: 16.sp)),
                  Text(
                    "Editar",
                    style: TextStyle(
                        fontSize: 16.sp, color: Theme.of(context).primaryColor),
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
          child: Row(
            children: [
              Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: true,
                onChanged: (value) {},
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
              Text(
                "Usar esta dirección",
                style: TextStyle(fontSize: 16.sp),
              )
            ],
          ),
        )
      ],
    );
  }
}

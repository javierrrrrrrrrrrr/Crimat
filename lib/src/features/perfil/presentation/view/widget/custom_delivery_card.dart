import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/profile/profile_model.dart';
import '../../../../../shared/widgets/card_sking.dart';

class CustomDeliveryCard extends StatelessWidget {
  const CustomDeliveryCard({
    super.key,
    required this.datos,
    required this.index,
  });

  final ProfileModel datos;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardSking(
          cardheight: 150.h,
          cardwidth: 375.w,
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
                  Text(datos.firstName, style: TextStyle(fontSize: 16.sp)),
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
                  '${datos.direcciones[index].id} ${datos.direcciones[index].direccion}, ${datos.direcciones[index].ciudad}, ${datos.direcciones[index].estado} ${datos.direcciones[index].postal}',
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
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

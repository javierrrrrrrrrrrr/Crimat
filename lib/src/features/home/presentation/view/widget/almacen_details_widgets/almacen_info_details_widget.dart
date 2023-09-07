import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../models/home/almacen/almacen_model.dart';
import 'custom_info_row.dart';

class AlmacenInfo extends StatelessWidget {
  const AlmacenInfo({Key? key, required this.almacen}) : super(key: key);

  final AlmacenModel almacen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            almacen.name,
            style: TextStyle(fontSize: 22.sp),
          ),
          SizedBox(
            height: 100.h,
          ),
          CustomInfoRow(
            imagen: "assets/icons/location.png",
            texto:
                '${almacen.address.apartado} ${almacen.address.ciudad} ${almacen.address.direccion}',
          ),
          SizedBox(
            height: 50.h,
          ),
          CustomInfoRow(
            isPhonenumber: true,
            imagen: "assets/icons/whasapp.png",
            texto: almacen.phone,
          ),
        ],
      ),
    );
  }
}

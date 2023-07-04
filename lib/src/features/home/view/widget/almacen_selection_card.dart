import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cusotm_buttom_product.dart';

class AlmacenSeleccionCard extends StatelessWidget {
  const AlmacenSeleccionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.sp,
      width: 280.sp,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 103.sp,
            width: 123.sp,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image3.jpg'))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  "Nombre del Almacén",
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.edit_location_outlined,
                      color: Color(0xFFDB3022),
                    ),
                    SizedBox(
                      width: 5.sp,
                    ),
                    SizedBox(
                      width: 50,
                      height: 20,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetr",
                        style: TextStyle(fontSize: 8.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                CusotmButtomForProducts(
                  name: "Ver productos",
                  height: 34.sp,
                  width: 120.sp,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

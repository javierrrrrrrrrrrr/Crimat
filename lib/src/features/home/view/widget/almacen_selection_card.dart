import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cusotm_buttom_product.dart';
import 'image_container.dart';

class AlmacenSeleccionCard extends StatelessWidget {
  const AlmacenSeleccionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 280.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 10.w,
          ),
          ImageContainer(
            height: 103.sp,
            width: 123.sp,
            url: 'assets/images/image3.jpg',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Nombre del Almacén",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    SizedBox(
                      width: 50.w,
                      height: 20.h,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetr",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CusotmButtomForProducts(
                  ispraimary: true,
                  name: "Ver productos",
                  height: 34.h,
                  width: 120.w,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

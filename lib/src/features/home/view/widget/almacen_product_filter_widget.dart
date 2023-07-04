import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'filter_product_list.dart';
import 'icons_filter_list.dart';

class AlmacenProductFilter extends StatelessWidget {
  const AlmacenProductFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.sp,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFFBECEA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.sp,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.sp),
            child: Text(
              "Productos",
              style: TextStyle(color: Colors.black, fontSize: 20.sp),
            ),
          ),
          SizedBox(
            height: 10.sp,
          ),
          const FilterProductList(),
          const IconsFilterList(),
        ],
      ),
    );
  }
}

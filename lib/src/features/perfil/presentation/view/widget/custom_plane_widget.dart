import 'package:crimat_app/src/shared/widgets/cusotm_buttom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/widgets/card_sking.dart';

class CustomPlane extends StatelessWidget {
  const CustomPlane({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardSking(
          cardwidth: 375.w,
          cardheight: 80.h,
        ),
        Container(
          height: 80.h,
          width: 92.w,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8.sp),
          ),
        ),
        Positioned(
          top: 24.h,
          right: 15.w,
          child: CusotmButtom(
              width: 130.w, height: 30.h, name: "Ver planes", ispraimary: true),
        )
      ],
    );
  }
}

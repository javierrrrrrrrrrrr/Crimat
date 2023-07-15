import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/presentation/view/widget/custom_picture_container.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 280.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 2),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
        border: Border.all(color: Colors.black.withOpacity(0.1), width: 1),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 8.w,
          ),
          FittedBox(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 100.h,
              width: 100.w,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: const PictureContainer(
                      isanotherurl:
                          "https://www.w3schools.com/w3images/fjords.jpg"),
                ),
              ),
            ),
          ),
          const ProductDetails(),
          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "\$16",
                  style: TextStyle(fontSize: 14.sp),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Lorem ipsumr dolor",
            style: TextStyle(fontSize: 14.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Color',
                  style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                ),
                TextSpan(
                  text: ' Negro',
                  style: TextStyle(color: Colors.black, fontSize: 12.sp),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Cantidad ',
                  style: TextStyle(color: Colors.grey, fontSize: 11.sp),
                ),
                TextSpan(
                  text: ' 1',
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

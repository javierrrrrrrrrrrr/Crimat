import 'package:crimat_app/src/shared/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/widgets/cusotm_buttom_product.dart';

class OptionButtoms extends StatelessWidget {
  const OptionButtoms({
    super.key,
    this.isShopping,
    this.total,
    this.onPressedPraimary,
    this.onPressedSecondary,
  });

  final bool? isShopping;
  final double? total;
  final void Function()? onPressedPraimary;
  final void Function()? onPressedSecondary;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.h,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFD63E30).withOpacity(0.4),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: isShopping == true
            ? CustomCardSking(
                total: double.parse(total!.toStringAsFixed(2)),
              )
            : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                CusotmButtom(
                  onPressed: onPressedPraimary,
                  height: 45,
                  width: 178,
                  name: context.loc.addToCart,
                  ispraimary: false,
                ),
                CusotmButtom(
                  onPressed: onPressedSecondary,
                  height: 45,
                  width: 178,
                  name: context.loc.buyNow,
                  ispraimary: true,
                ),
              ]),
      ),
    );
  }
}

class CustomCardSking extends StatelessWidget {
  const CustomCardSking({
    super.key,
    this.total,
  });

  final double? total;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CusotmButtom(
                height: 55.h,
                width: 290.w,
                name: context.loc.continueToPayment,
                lettersize: 160.w,
                ispraimary: true,
              ),
            ],
          ),
        ),
        Positioned(
          top: 12.h,
          child: Text(
            "Total",
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
        Positioned(
          top: 12.h,
          right: 0,
          child: Text(
            "\$$total",
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}

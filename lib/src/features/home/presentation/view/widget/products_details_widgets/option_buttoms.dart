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
    this.isProductdetails,
    this.onPressedPay,
  });

  final bool? isShopping;
  final bool? isProductdetails;
  final double? total;
  final void Function()? onPressedPraimary;
  final void Function()? onPressedSecondary;
  final void Function()? onPressedPay;

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
                onPressed: onPressedPay,
                total: double.parse(total!.toStringAsFixed(2)),
              )
            : isProductdetails == true
                ? Align(
                    alignment: Alignment.center,
                    child: CusotmButtom(
                      onPressed: onPressedPraimary,
                      height: 45,
                      width: 150,
                      name: "Añadir al carrito",
                      ispraimary: false,
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        CusotmButtom(
                          onPressed: onPressedPraimary,
                          height: 45,
                          width: 178,
                          name: "Añadir al carrito",
                          ispraimary: false,
                        ),
                        CusotmButtom(
                          onPressed: onPressedSecondary,
                          height: 45,
                          width: 178,
                          name: "Comprar ahora",
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
    this.onPressed,
  });

  final double? total;
  final void Function()? onPressed;

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
                onPressed: onPressed,
                height: 55.h,
                width: 290.w,
                name: "Continuar con el pago",
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

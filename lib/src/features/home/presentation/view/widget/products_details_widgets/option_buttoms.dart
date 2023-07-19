import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/widgets/cusotm_buttom_product.dart';

class OptionButtoms extends StatelessWidget {
  const OptionButtoms({
    super.key,
    this.isShopping,
  });

  final bool? isShopping;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.h,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFD63E30).withOpacity(0.4),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: isShopping == true
            ? const CustomCardSking()
            : const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    CusotmButtom(
                      height: 45,
                      width: 178,
                      name: "Añadir al carrito",
                      ispraimary: false,
                    ),
                    CusotmButtom(
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
  });

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
                name: "Continuar con el pago",
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
            "\$44",
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}

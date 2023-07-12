import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../shared/widgets/cusotm_buttom_product.dart';

class OptionButtoms extends StatelessWidget {
  const OptionButtoms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127.h,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFD63E30).withOpacity(0.4),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: const Row(
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

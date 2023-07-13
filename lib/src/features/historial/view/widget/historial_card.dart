import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/widgets/card_sking.dart';
import '../../../../shared/widgets/cusotm_buttom_product.dart';

class HisorialCard extends StatelessWidget {
  const HisorialCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CardSking(cardwidth: 375),
        Positioned(
          left: 10.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15.h),
              Text(
                "Orden: 771947034",
                style: TextStyle(fontSize: 14.sp, color: Colors.black),
              ),
              SizedBox(height: 5.h),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Almacén',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: ' Crimat Hialeah',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Cantidad',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: ' 2',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Monto total',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: ' \$34 ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 15.w,
          top: 15.h,
          child: Text(
            "05-12-2019",
            style: TextStyle(fontSize: 14.sp, color: Colors.grey),
          ),
        ),
        Positioned(
          right: 15.w,
          bottom: 20.h,
          child: CusotmButtom(
            height: 32.h,
            width: 90.w,
            name: "Detalles",
            ispraimary: false,
          ),
        ),
      ],
    );
  }
}

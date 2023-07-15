import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumDetails extends StatelessWidget {
  const ColumDetails({
    super.key,
    this.isvisibleamount,
  });

  final bool? isvisibleamount;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        isvisibleamount == false
            ? Container()
            : RichText(
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
              )
      ],
    );
  }
}

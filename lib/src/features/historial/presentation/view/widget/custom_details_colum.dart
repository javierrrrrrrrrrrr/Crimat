import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColumDetails extends StatelessWidget {
  const ColumDetails({
    super.key,
    this.isvisibleamount,
    required this.orderNumber,
    required this.warehouse,
    required this.quantity,
    required this.totalAmount,
  });

  final bool? isvisibleamount;
  final String orderNumber;
  final String warehouse;
  final int quantity;
  final double totalAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15.h),
        Text(
          "Orden: $orderNumber",
          style: TextStyle(fontSize: 14.sp, color: Colors.black),
        ),
        SizedBox(height: 5.h),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Almacén',
                style: TextStyle(color: Colors.grey),
              ),
              TextSpan(
                text: ' $warehouse',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h),
        RichText(
          text: TextSpan(
            children: [
              const TextSpan(
                text: 'Cantidad',
                style: TextStyle(color: Colors.grey),
              ),
              TextSpan(
                text: ' $quantity',
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h),
        isvisibleamount == false
            ? Container()
            : RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Monto total',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: '\$$totalAmount',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSking extends StatelessWidget {
  const CardSking({
    super.key,
    this.cardheight,
  });

  final double? cardheight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardheight ?? 127.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
    );
  }
}

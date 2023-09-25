import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteCircle extends StatelessWidget {
  const FavoriteCircle({
    super.key,
    this.isfavorite,
    required this.productid,
  });

  final bool? isfavorite;
  final int productid;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.sp,
      height: 35.sp,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: isfavorite == true ? Colors.red : Colors.grey,
          size: 20,
        ),
      ),
    );
  }
}

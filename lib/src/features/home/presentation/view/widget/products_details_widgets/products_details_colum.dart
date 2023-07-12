import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsColum extends StatelessWidget {
  const ProductDetailsColum({
    super.key,
    required this.name,
    required this.price,
    required this.description,
  });

  final String name;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          Text(
            name,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.h),
          Text(
            "\$$price",
            style: TextStyle(color: Colors.black.withOpacity(0.8)),
          ),
          SizedBox(height: 10.h),
          Text(
            "Descripción",
            style: TextStyle(color: Colors.black.withOpacity(0.8)),
          ),
          SizedBox(
            height: 180,
            child: Center(
              child: Text(
                description,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

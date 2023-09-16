import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDate extends StatelessWidget {
  const CustomDate({
    super.key,
    required this.date,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
    );
  }
}

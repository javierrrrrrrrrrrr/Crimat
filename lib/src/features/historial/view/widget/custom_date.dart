import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDate extends StatelessWidget {
  const CustomDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "05-12-2019",
      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
    );
  }
}

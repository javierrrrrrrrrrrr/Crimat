import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusotmButtomForProducts extends StatelessWidget {
  const CusotmButtomForProducts({
    super.key,
    required this.width,
    required this.height,
    required this.name,
  });

  final double width;
  final double height;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFFDB3022)),
        ),
        child: Center(
            child: Text(
          name,
          style: TextStyle(fontSize: 12.sp),
        )),
        onPressed: () {},
      ),
    );
  }
}

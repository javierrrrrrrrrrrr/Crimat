import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusotmButtom extends StatelessWidget {
  const CusotmButtom({
    super.key,
    required this.width,
    required this.height,
    required this.name,
    required this.ispraimary,
    this.onPressed,
  });

  final double width;
  final double height;
  final String name;
  final bool ispraimary;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ispraimary == true
            ? ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColor),
              )
            : OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side:
                      BorderSide(color: Colors.red.withOpacity(0.4), width: 2),
                ),
              ),
        onPressed: onPressed,
        child: Center(
            child: Text(
          name,
          style: TextStyle(
              fontSize: 12.sp,
              color: ispraimary == true
                  ? Colors.white
                  : Theme.of(context).primaryColor),
        )),
      ),
    );
  }
}

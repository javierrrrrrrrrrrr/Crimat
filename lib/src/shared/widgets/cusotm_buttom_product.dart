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
    this.lettersize,
    this.fontsize,
    this.haveicon,
    this.isEnable,
  });

  final double width;
  final double height;
  final String name;
  final bool ispraimary;
  final void Function()? onPressed;
  final double? lettersize;
  final double? fontsize;
  final bool? haveicon;
  final bool? isEnable;

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
            child: SizedBox(
          height: haveicon == true ? 40.h : 15.h,
          width: lettersize ?? 90.w,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: haveicon == true
                ? Row(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        size: 25.sp,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: fontsize ?? 16.sp,
                            color: ispraimary == true
                                ? Colors.white
                                : Theme.of(context).primaryColor),
                      ),
                    ],
                  )
                : Text(
                    name,
                    style: TextStyle(
                        fontSize: fontsize ?? 14.sp,
                        color: ispraimary == true
                            ? Colors.white
                            : Theme.of(context).primaryColor),
                  ),
          ),
        )),
      ),
    );
  }
}

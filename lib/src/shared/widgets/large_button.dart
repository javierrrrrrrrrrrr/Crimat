import 'package:crimat_app/resources/general_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LargeButton extends StatelessWidget {
  final Color? color;
  final String text;
  final void Function() onPressed;
  const LargeButton({required this.text, required this.onPressed, this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(

        foregroundColor: color == null ? Colors.white : GStyles.primaryColor,
        shape: RoundedRectangleBorder(side: BorderSide(color: GStyles.primaryColor), borderRadius: BorderRadius.circular(5.sp)),
        minimumSize: Size(380.sp, 56.sp),
        backgroundColor: color ?? GStyles.primaryColor,
      ),
      onPressed: onPressed,
      child: Text(text, style: GStyles.bigTextStyle.copyWith(color: color == null ? Colors.white : GStyles.primaryColor),),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAdvertinceWidget extends StatelessWidget {
  const CustomAdvertinceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  color: Colors.blue,
      width: 316.w,
      height: 120.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: const Center(
          child: Text(
              "Si deseas agregar un producto desde otro almacén, ten en cuenta que si prosigues, el producto deseado será agregado después de vaciar el carrito actual."),
        ),
      ),
    );
  }
}

class CustomCloseDialog extends StatelessWidget {
  const CustomCloseDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
      ),
      child: const Icon(
        Icons.close,
        color: Colors.white,
        size: 24.0,
      ),
    );
  }
}

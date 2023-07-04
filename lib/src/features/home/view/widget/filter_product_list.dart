import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterProductList extends StatelessWidget {
  const FilterProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.h, left: 10.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: index % 2 == 0
                      ? Theme.of(context).secondaryHeaderColor
                      : Theme.of(context).primaryColor,
                ),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Text(
                    "Cuidado facial",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.white,
                          fontSize: 15.sp,
                        ),
                  ),
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}

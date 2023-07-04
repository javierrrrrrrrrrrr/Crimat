import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconsFilterList extends StatelessWidget {
  const IconsFilterList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.sp, left: 20.sp, right: 20.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.filter_list,
                size: 24.sp,
              ),
              SizedBox(
                width: 8.sp,
              ),
              Text(
                "Filters",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.swap_vert,
                size: 24.sp,
              ),
              SizedBox(
                width: 8.sp,
              ),
              Text(
                "Price: bajo a alto",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Icon(
            Icons.widgets,
            size: 24.sp,
          ),
        ],
      ),
    );
  }
}

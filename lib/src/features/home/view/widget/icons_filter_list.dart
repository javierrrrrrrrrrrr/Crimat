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
        children: [
          const Icon(Icons.filter_list),
          const Text("Filters"),
          SizedBox(
            width: 75.sp,
          ),
          const Icon(Icons.swap_vert),
          const Text("Price: bajo a alto"),
          SizedBox(
            width: 75.sp,
          ),
          const Icon(Icons.widgets),
        ],
      ),
    );
  }
}

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
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 10.sp, left: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.sp),
                  color: index % 2 == 0 ? Colors.black : Colors.red,
                ),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0.sp),
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

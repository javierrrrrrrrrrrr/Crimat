import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../shared/widgets/card_sking.dart';

class CustomDeliveryCard extends StatelessWidget {
  const CustomDeliveryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardSking(
          cardheight: 150.h,
          cardwidth: 375.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pablo Ruiz", style: TextStyle(fontSize: 16.sp)),
                  Text(
                    "Editar",
                    style: TextStyle(
                        fontSize: 16.sp, color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 50.h,
                width: 250.w,
                child: Text(
                  "3 Newbridge Court Chino Hills, CA 91709, United States",
                  style: TextStyle(fontSize: 16.sp),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 5.w,
          child: Row(
            children: [
              Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: true,
                onChanged: (value) {},
                materialTapTargetSize: MaterialTapTargetSize.padded,
              ),
              Text(
                "Usar esta dirección",
                style: TextStyle(fontSize: 16.sp),
              )
            ],
          ),
        )
      ],
    );
  }
}

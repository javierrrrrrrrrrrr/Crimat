import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'details_card.dart';

class CustomCardProdcutsDetailsColum extends StatelessWidget {
  const CustomCardProdcutsDetailsColum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 280.h,
        width: 300.w,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(
                    height: 14.h,
                  ),
                  const DetailsCard(),
                ],
              );
            }));
  }
}

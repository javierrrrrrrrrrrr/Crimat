import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/widgets/card_sking.dart';

class HistorialDetails extends StatelessWidget {
  static const String name = 'hisorial_view_details';

  const HistorialDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardSking(
              cardheight: 734.h,
              cardwidth: 375.w,
            ),
          ],
        ),
      ),
    );
  }
}

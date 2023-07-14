import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/widgets/card_sking.dart';

class HistorialDetails extends StatelessWidget {
  static const String name = 'hisorial_view_details';

  const HistorialDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: CardSking(
              cardheight: 734.h,
              cardwidth: 375.w,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'almacen_selection_card.dart';

class AlmacenSeleccionCarusel extends StatelessWidget {
  const AlmacenSeleccionCarusel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(
                left: 10.sp, right: 10.sp, top: 15.5.sp, bottom: 15.5.sp),
            child: const AlmacenSeleccionCard(),
          );
        });
  }
}

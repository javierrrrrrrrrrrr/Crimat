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
                left: 10.w, right: 10.w, top: 15.5.h, bottom: 15.5.h),
            child: const AlmacenSeleccionCard(),
          );
        });
  }
}

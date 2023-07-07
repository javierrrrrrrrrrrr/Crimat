import 'package:crimat_app/src/features/Favoritos/view/widget/custom_favorite_carrusel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/view/widget/custom_title.dart';

class FavoritoHome extends StatelessWidget {
  const FavoritoHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25.w, top: 60.h),
          child: const CustomTitle(
            titulo: "Tus Favoritos",
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 5.h),
                  child: const FavoriteCarrusel(),
                );
              }),
        )
      ],
    );
  }
}

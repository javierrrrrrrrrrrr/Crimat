import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DireccionAddressRow extends StatelessWidget {
  const DireccionAddressRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
      ),
      child: Row(
        children: [
          const Text(
            "Entregar en:",
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            width: 140.w,
          ),
          const Text(
            "Salataga City,Central...",
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

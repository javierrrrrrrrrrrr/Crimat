import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          maxRadius: 30,
          child: Center(child: Icon(Icons.person, size: 40)),
        ),
        SizedBox(
          width: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pablo Ruiz",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "pabloruiz@gmail.com",
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.4)),
            ),
          ],
        ),
      ],
    );
  }
}

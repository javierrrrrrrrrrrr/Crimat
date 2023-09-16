import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/profile/profile_model.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({
    super.key,
    required this.profile,
  });

  final ProfileModel profile;

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
            Text(
              "${profile.firstName} ${profile.lastName}",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              profile.email,
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.4)),
            ),
          ],
        ),
      ],
    );
  }
}

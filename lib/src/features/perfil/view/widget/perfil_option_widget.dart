import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PerfilOption extends StatelessWidget {
  const PerfilOption({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 330.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 11, color: Colors.black.withOpacity(0.5)),
              ),
            ],
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: Theme.of(context).primaryColor,
          size: 14.2,
        ),
      ],
    );
  }
}

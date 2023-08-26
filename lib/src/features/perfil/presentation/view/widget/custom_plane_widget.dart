import 'package:crimat_app/src/shared/widgets/cusotm_buttom_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../models/profile/profile_model.dart';
import '../../../../../shared/widgets/card_sking.dart';
import '../../bloc/profile_bloc.dart';
import '../plane_view.dart';

class CustomPlane extends StatelessWidget {
  const CustomPlane({
    super.key,
    required this.profile,
  });

  final ProfileModel profile;

  @override
  Widget build(BuildContext context) {
    final profilebloc = context.read<ProfileBloc>();
    return Stack(
      children: [
        CardSking(
          cardwidth: 375.w,
          cardheight: 80.h,
        ),
        Container(
          height: 80.h,
          width: 92.w,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8.sp),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Plan ${profile.suscripcion.tipo}",
                style: TextStyle(color: Colors.white, fontSize: 11.sp),
              ),
              Text(
                "F.expiración:",
                style: TextStyle(color: Colors.white, fontSize: 10.sp),
              ),
              Text(
                "7/30/2023",
                style: TextStyle(color: Colors.white, fontSize: 10.sp),
              ),
            ],
          ),
        ),
        Positioned(
          top: 24.h,
          right: 15.w,
          child: CusotmButtom(
              onPressed: () {
                profilebloc.add(const ProfileEvent.getSubscriptionsTyps());
                context.pushNamed(PlanesView.name);
              },
              width: 130.w,
              height: 30.h,
              name: "Ver planes",
              ispraimary: true),
        )
      ],
    );
  }
}

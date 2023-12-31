import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../../models/home/almacen/almacen_model.dart';
import 'almacen_selection_card.dart';
import 'loading_widget/loading_container.dart';

class AlmacenSeleccionCarrusel extends StatelessWidget {
  const AlmacenSeleccionCarrusel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlmacenBloc, AlmacenState>(
      builder: (context, state) => state.when(
        initial: () => const SizedBox(),
        loading: () => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 15.5.h,
                ),
                child: const LoadingAlmacenSeleccionCard());
          },
        ),
        success: (almacenes) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: almacenes.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 15.5.h,
                ),
                child: AlmacenSeleccionCard(
                  almacen: almacenes[index],
                  selectedIndex: index,
                ));
          },
        ),
        failure: (error) => SizedBox(
          child: Text(error),
        ),
        selectedAlmacen: (List<AlmacenModel> almacenes, int index) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: almacenes.length,
            itemBuilder: (BuildContext context, int listviewIndex) {
              final almacen = almacenes[listviewIndex];
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 15.5.h,
                ),
                child: AlmacenSeleccionCard(
                    selectedIndex: listviewIndex,
                    almacen: almacen,
                    isSelected: listviewIndex == index ? true : false),
              );
            },
          );
        },
      ),
    );
  }
}

class LoadingAlmacenSeleccionCard extends StatelessWidget {
  const LoadingAlmacenSeleccionCard({
    super.key,
    this.isfavoriteview,
  });

  final bool? isfavoriteview;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 120.h,
            width: 280.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.sp),
                border: Border.all(
                  color: isfavoriteview == true
                      ? Colors.grey.withOpacity(0.6)
                      : Colors.white.withOpacity(0.6),
                  width: 2.0,
                ))),
        Positioned(
            top: 30.h,
            left: 50.w,
            child: SpinKitFadingCircle(
              color: isfavoriteview == true ? Colors.grey : Colors.white,
            )),
        Positioned(
          top: 15.h,
          left: 140.w,
          child: LoadingContainer(
            color: const Color((0xED2D1C)).withOpacity(0.5),
            height: 12.h,
            width: 108.w,
          ),
        ),
        Positioned(
          top: 40.h,
          left: 130.w,
          child: LoadingContainer(
            color: const Color((0xED2D1C)).withOpacity(0.5),
            height: 15.h,
            width: 18.w,
          ),
        ),
        Positioned(
          top: 40.h,
          left: 155.w,
          child: LoadingContainer(
            color: const Color((0xED2D1C)).withOpacity(0.5),
            height: 15.h,
            width: 96.w,
          ),
        ),
        Positioned(
          top: 70.h,
          left: 130.w,
          child: LoadingContainer(
            iscircularborder: true,
            color: const Color((0x393F42)).withOpacity(0.4),
            height: 34.h,
            width: 120.w,
          ),
        ),
      ],
    );
  }
}

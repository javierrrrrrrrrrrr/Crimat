import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/categories_model.dart';
import '../../bloc/categories_bloc/categories_bloc.dart';
import 'filter_product_list.dart';
import 'icons_filter_list.dart';

class AlmacenProductFilter extends StatelessWidget {
  const AlmacenProductFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesBloc, CategoriesState>(
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
                child: Container());
          },
        ),
        success: (categories) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 15.5.h,
                ),
                child: AlmacenProductFilterWidget(
                  categories: categories[index],
                ));
          },
        ),
        failure: (error) => SizedBox(
          child: Text(error),
        ),
      ),
    );
  }
}

class AlmacenProductFilterWidget extends StatelessWidget {
  const AlmacenProductFilterWidget({
    super.key,
    required this.categories,
  });

  final CategoriaProductoModel categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFFBECEA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              categories.nombre,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const FilterProductList(),
          const IconsFilterList(),
        ],
      ),
    );
  }
}

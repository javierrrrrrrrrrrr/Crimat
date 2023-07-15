import 'package:crimat_app/src/features/home/presentation/bloc/almacen_bloc/almacen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/home/categories/categories_model.dart';
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
        loading: () => const AlmacenProductFilterWidget(
          categories: [],
        ),
        success: (categories) => AlmacenProductFilterWidget(
          categories: categories,
        ),
        failure: (error) => SizedBox(
          child: Text(error),
        ),
        selectedCategory: (categories, __, ___, ____) =>
            AlmacenProductFilterWidget(
          categories: categories,
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

  final List<CategoriesModel> categories;

  @override
  Widget build(BuildContext context) {
    final categoriesBloc = context.watch<CategoriesBloc>();
    return Container(
      height: categoriesBloc.state.maybeWhen(
        orElse: () => 120.h,
        selectedCategory: (_, subCategories, ___, ____) {
          return subCategories!.isEmpty ? 120.h : 165.h;
        },
      ),
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
            child: Builder(builder: (context) {
              final productBloc = context.watch<AlmacenBloc>();

              return productBloc.state.maybeMap(
                selectedAlmacen: (value) => Text(
                  'Productos de ${value.almacenes[value.index].name}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                orElse: () => Text(
                  'Productos',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            }),
          ),
          SizedBox(
            height: 10.h,
          ),
          FilterProductList(
            categories: categories,
          ),
          const IconsFilterList(),
          categoriesBloc.state.maybeWhen(
            orElse: () => const SizedBox(),
            selectedCategory: (_, subCategories, ___, ____) =>
                subCategories!.isEmpty
                    ? const SizedBox()
                    : FilterProductList(
                        subCategories: subCategories,
                      ),
          ),
        ],
      ),
    );
  }
}

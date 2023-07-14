import 'package:crimat_app/src/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/home/categories/categories_model.dart';

class FilterProductList extends StatelessWidget {
  const FilterProductList({
    super.key,
    required this.categories,
  });

  final List<CategoriesModel> categories;

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                productBloc.state.mapOrNull(
                  loadedSuccess: (state) {
                    productBloc.add(
                      ProductEvent.getProductsByCategories(
                          category: categories[index],
                          listProduct: state.originalProductList),
                    );
                  },
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.h, left: 10.w),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: index % 2 == 0
                        ? Theme.of(context).secondaryHeaderColor
                        : Theme.of(context).primaryColor,
                  ),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Text(
                      categories[index].nombre,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ),
                    ),
                  )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

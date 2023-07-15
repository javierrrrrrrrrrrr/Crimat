import 'package:crimat_app/src/features/home/presentation/bloc/categories_bloc/categories_bloc.dart';
import 'package:crimat_app/src/features/home/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../models/home/categories/categories_model.dart';

class FilterProductList extends StatelessWidget {
  const FilterProductList({
    super.key,
    this.categories,
    this.subCategories,
  });

  final List<CategoriesModel>? categories;
  final List<TipoProductoModel>? subCategories;

  @override
  Widget build(BuildContext context) {
    final productBloc = context.read<ProductBloc>();
    final categoriesBloc = context.read<CategoriesBloc>();

    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 10.w),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories?.length ?? subCategories?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                productBloc.state.mapOrNull(
                  loadedSuccess: (state) {
                    if (categories != null) {
                      productBloc.add(
                        ProductEvent.getProductsByCategories(
                          category: categories![index],
                          listProduct: state.originalProductList,
                        ),
                      );

                      categoriesBloc.add(
                        CategoriesEvent.selectCategory(
                            categorySelectedIndex: index),
                      );
                    } else {
                      productBloc.add(
                        ProductEvent.getProductsBySubCategories(
                          subCategory: subCategories![index],
                          listProduct: state.originalProductList,
                        ),
                      );

                      categoriesBloc.add(
                        CategoriesEvent.selectSubCategory(
                          categorySelectedIndex: categoriesBloc.state.maybeWhen(
                            orElse: () => 0,
                            selectedCategory:
                                (_, __, selectedCategoryIndex, ____) =>
                                    selectedCategoryIndex,
                          ),
                          subCategorySelectedIndex: index,
                        ),
                      );
                    }
                  },
                );
              },
              child: Builder(builder: (context) {
                final state = categoriesBloc.state;

                return Padding(
                  padding: EdgeInsets.only(bottom: 10.h, left: 10.w),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: state.maybeWhen(
                        orElse: () => Theme.of(context).secondaryHeaderColor,
                        selectedCategory:
                            (_, __, selectedCategoryIndex, subCategoryIndex) {
                          if (categories != null) {
                            return selectedCategoryIndex == index
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).secondaryHeaderColor;
                          }
                          if (subCategories != null) {
                            return subCategoryIndex == index
                                ? Theme.of(context).primaryColor
                                : Theme.of(context).secondaryHeaderColor;
                          }
                          return null;
                        },
                      ),
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: categories != null
                          ? Text(
                              categories![index].nombre,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                            )
                          : Text(
                              subCategories![index].nombre,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                  ),
                            ),
                    )),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}

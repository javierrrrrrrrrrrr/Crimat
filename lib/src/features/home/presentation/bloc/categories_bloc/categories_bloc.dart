import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/errors/failure.dart';
import 'package:crimat_app/src/repositories/categorias_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/home/categories/categories_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepository repository;
  CategoriesBloc(this.repository) : super(const CategoriesState.initial()) {
    on<CategoriesEvent>(eventHandler);
  }

  List<CategoriesModel> categorilist = [];

  Future<void> eventHandler(CategoriesEvent event, Emitter emit) async {
    await event.when(
      load: () async {
        emit(const CategoriesState.loading());
        final result = await repository.getAllcategories();
        result.fold((failure) {
          if (failure is ServerFailure) {
            emit(CategoriesState.failure(message: failure.message));
          }
        }, (categories) {
          categorilist = categories;
          emit(CategoriesState.success(categories: categorilist));
        });
      },
      selectCategory: (categorySelectedIndex) {
        final List<CategoriesModel> categories = state.maybeMap(
          success: (value) => value.categories,
          selectedCategory: (value) => value.categories,
          orElse: () => [],
        );
        if (categorySelectedIndex != null) {
          emit(
            CategoriesState.selectedCategory(
                categories: categories,
                categogyIndex: categorySelectedIndex,
                subCategiries: categories[categorySelectedIndex].tiposProducto,
                subCategogyIndex: -1),
          );
        } else {
          emit(
            CategoriesState.selectedCategory(
              categories: categories,
              categogyIndex: -1,
              subCategogyIndex: -1,
            ),
          );
        }
      },
      selectSubCategory: (int categoryIndex, int subCategoryIndex) {
        final List<CategoriesModel> categories = state.maybeMap(
          success: (value) => value.categories,
          selectedCategory: (value) => value.categories,
          orElse: () => [],
        );
        emit(CategoriesState.selectedCategory(
            categories: categories,
            categogyIndex: categoryIndex,
            subCategiries: categories[categoryIndex].tiposProducto,
            subCategogyIndex: subCategoryIndex));
      },
      signOut: () {
        resetVariable();
        emit(CategoriesState.success(categories: categorilist));
        //  emit(const CategoriesState.initial());
      },
    );
  }

  void resetVariable() {}
}

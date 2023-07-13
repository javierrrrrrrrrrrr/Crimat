import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/errors/failure.dart';
import 'package:crimat_app/src/repositories/categorias_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/features/home/categories/categories_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  final CategoriesRepository repository;
  CategoriesBloc(this.repository) : super(const CategoriesState.initial()) {
    on<CategoriesEvent>(eventHandler);
  }

  Future<void> eventHandler(event, emit) async {
    await event.when(load: () async {
      emit(const CategoriesState.loading());
      final result = await repository.getAllcategories();
      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(CategoriesState.failure(message: failure.message));
        }
      }, (categories) {
        emit(CategoriesState.success(categories: categories));
      });
    });
  }
}
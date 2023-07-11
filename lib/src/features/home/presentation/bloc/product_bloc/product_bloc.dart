import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../errors/failure.dart';
import '../../../../../models/producto_model.dart';
import '../../../../../repositories/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProdcutRepository repository;

  ProductBloc(this.repository) : super(const ProductState.initial()) {
    on<ProductEvent>(eventHandler);
  }

  FutureOr<void> eventHandler(event, emit) async {
    await event.when(loadProducts: (id) async {
      emit(const ProductState.loading());
      final result = await repository.getAllProduct(id);
      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(ProductState.failure(message: failure.message));
        }
      }, (productos) {
        emit(ProductState.loadedSuccess(productos: productos));
      });
    });
  }
}

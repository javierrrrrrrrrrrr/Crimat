import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/home/products/producto_model.dart';
import '../../../utils/shopping_card_aux.dart';

part 'check_event.dart';
part 'check_state.dart';
part 'check_bloc.freezed.dart';

class CheckBloc extends Bloc<CheckEvent, CheckState> {
  CheckBloc() : super(const CheckState.initial()) {
    on<CheckEvent>(eventHandler);
  }
  List<bool> _checklist = [];

  List<bool> get checklist =>
      _checklist; // Getter público para acceder a _checklist

  FutureOr<void> eventHandler(
    CheckEvent event,
    Emitter emit,
  ) async {
    await event.when(
      updateList: (List<ProductModel> productlist) async {
        emit(const CheckState.loading());
        _checklist = Cart(product: productlist).getboolList(productlist);
        emit(CheckState.loaded(selection: _checklist));
      },
      updatevisibility: (int index) {
        emit(const CheckState.loading());
        _checklist[index] = !_checklist[index];
        emit(CheckState.loaded(selection: _checklist));
      },
      signOut: () {
        resetVariable();
        emit(const CheckState.initial());
      },
    );
  }

  void resetVariable() {
    _checklist = [];
  }
}

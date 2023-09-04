import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/errors/failure.dart';
import 'package:crimat_app/src/models/home/almacen/almacen_model.dart';
import 'package:crimat_app/src/repositories/almacen_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'almacen_event.dart';
part 'almacen_state.dart';
part 'almacen_bloc.freezed.dart';

class AlmacenBloc extends Bloc<AlmacenEvent, AlmacenState> {
  final AlmacenRepository repository;
  AlmacenBloc(this.repository) : super(const AlmacenState.initial()) {
    on<AlmacenEvent>(eventHandler);
  }

  List<AlmacenModel> almaceneslist = [];

  Future<void> eventHandler(AlmacenEvent event, Emitter emit) async {
    await event.when(
      load: () async {
        emit(const AlmacenState.loading());
        final result = await repository.getAllAlmacenes();
        result.fold((failure) {
          if (failure is ServerFailure) {
            emit(AlmacenState.failure(message: failure.message));
          }
        }, (almacenes) {
          almaceneslist = almacenes;
          emit(AlmacenState.success(almacenes: almaceneslist));
        });
      },
      activeAlmacen: (int index, List<AlmacenModel> almacenes) {
        emit(AlmacenState.selectedAlmacen(almacenes: almacenes, index: index));
      },
      signOut: () {
        resetVariables();
        emit(AlmacenState.success(almacenes: almaceneslist));

        // emit(const AlmacenState.initial());
      },
    );
  }

  void resetVariables() {}
}

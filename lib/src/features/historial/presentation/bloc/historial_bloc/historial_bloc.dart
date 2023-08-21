import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/errors/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../models/historial/historial_model.dart';
import '../../../../../repositories/historial_repository.dart';
import '../../../../../shared/app_info.dart';
import '../../../../../shared/dependency_injection/dependency_injection.dart';

part 'historial_event.dart';
part 'historial_state.dart';
part 'historial_bloc.freezed.dart';

class HistorialBloc extends Bloc<HistorialEvent, HistorialState> {
  String? token = sl<AppUtilInfo>().accessToken;
  final HistorialRepository historial;
  HistorialBloc(this.historial) : super(const HistorialState.initial()) {
    on<HistorialEvent>(eventHandler);
  }

  Future<void> eventHandler(
    HistorialEvent event,
    Emitter emit,
  ) async {
    await event.when(load: () async {
      emit(const HistorialState.loading());
      dynamic result;

      result = await historial.getAllhistorial(token: token);

      //implementar leer del almacenamiento interno y que devuelva una lista de OrdenModel

      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(HistorialState.failure(message: failure.message));
        }
      }, (historial) {
        emit(HistorialState.success(historial: historial));
      });
    });
  }
}

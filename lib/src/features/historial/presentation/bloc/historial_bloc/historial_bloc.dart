import 'package:bloc/bloc.dart';
import 'package:crimat_app/src/errors/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../models/payment/payment_with_token/payment_model.dart';
import '../../../../../repositories/historial_repository.dart';

part 'historial_event.dart';
part 'historial_state.dart';
part 'historial_bloc.freezed.dart';

class HistorialBloc extends Bloc<HistorialEvent, HistorialState> {
  // String? token = sl<AppUtilInfo>().accessToken;
  final HistorialRepository historial;
  HistorialBloc(this.historial) : super(const HistorialState.initial()) {
    on<HistorialEvent>(eventHandler);
  }

  Future<void> eventHandler(
    HistorialEvent event,
    Emitter emit,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    await event.when(load: () async {
      emit(const HistorialState.loading());
      dynamic result;

      result = await historial.getAllhistorial(token: token);

      result.fold((failure) {
        if (failure is ServerFailure) {
          emit(HistorialState.failure(message: failure.message));
        }
      }, (historial) {
        emit(HistorialState.success(historial: historial));
      });
    }, saveInStorageHistorial: (List<OrdenModel> datos) async {
      await historial.saveHistorial(historial: datos);
    });
  }
}

part of 'check_bloc.dart';

@freezed
abstract class CheckState with _$CheckState {
  const factory CheckState.initial() = _CartInitial;
  const factory CheckState.loading() = _CartLoadingState;
  const factory CheckState.loaded({
    required List<bool> selection,
  }) = _CheckLoadedState;
  const factory CheckState.error({required String message}) = _CheckErrorState;
}

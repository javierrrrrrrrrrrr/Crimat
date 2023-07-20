part of 'check_bloc.dart';

@freezed
abstract class CheckState with _$CheckState {
  const factory CheckState.initial() = CartInitial;
  const factory CheckState.loading() = CartLoadingState;
  const factory CheckState.loaded({
    required List<bool> selection,
  }) = CheckLoadedState;
  const factory CheckState.error({required String message}) = CheckErrorState;
}

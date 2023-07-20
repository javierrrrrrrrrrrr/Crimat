part of 'check_bloc.dart';

@freezed
abstract class CheckEvent with _$CheckEvent {
  const factory CheckEvent.updateList(
      {required List<ProductModel> productlist}) = UpdateList;
  const factory CheckEvent.updatevisibility({required int index}) = Updatevisibility;
}

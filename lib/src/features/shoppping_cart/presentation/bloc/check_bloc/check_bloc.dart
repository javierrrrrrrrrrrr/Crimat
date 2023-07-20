import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/home/products/producto_model.dart';

part 'check_event.dart';
part 'check_state.dart';
part 'check_bloc.freezed.dart';

class CheckBloc extends Bloc<CheckEvent, CheckState> {
  CheckBloc() : super(const CheckState.initial()) {
    on<CheckEvent>(eventHandler);
  }

  final List<bool> _checklist = [];
}

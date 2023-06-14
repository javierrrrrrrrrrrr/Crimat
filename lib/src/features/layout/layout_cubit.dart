import 'package:flutter_bloc/flutter_bloc.dart';

import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState>{
  LayoutCubit():super(LayoutState.home);

  void changeScreen(int newIndex){
    ///Here we extract the state from the enum list by its index
    LayoutState newState = LayoutState.values.elementAt(newIndex);
    if(!isClosed) emit(newState);
  }


}
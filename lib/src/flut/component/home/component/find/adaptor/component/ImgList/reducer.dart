import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ImgListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ImgListState>>{
      ImgListAction.action: _onAction,
    },
  );
}

ImgListState _onAction(ImgListState state, Action action) {
  final ImgListState newState = state.clone();
  return newState;
}

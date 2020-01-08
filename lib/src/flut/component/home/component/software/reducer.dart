import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SoftWareState> buildReducer() {
  return asReducer(
    <Object, Reducer<SoftWareState>>{
      SoftWareAction.action: _onAction,
    },
  );
}

SoftWareState _onAction(SoftWareState state, Action action) {
  final SoftWareState newState = state.clone();
  return newState;
}

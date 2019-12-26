import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DemoState> buildReducer() {
  return asReducer(
    <Object, Reducer<DemoState>>{
      DemoAction.action: _onAction,
    },
  );
}

DemoState _onAction(DemoState state, Action action) {
  final DemoState newState = state.clone();
  return newState;
}

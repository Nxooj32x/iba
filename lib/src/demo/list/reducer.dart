import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DemoListState> buildReducer() {
  return asReducer(
    <Object, Reducer<DemoListState>>{
      DemoListAction.action: _onAction,
    },
  );
}

DemoListState _onAction(DemoListState state, Action action) {
  final DemoListState newState = state.clone();
  return newState;
}

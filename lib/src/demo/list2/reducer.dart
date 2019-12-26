import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DemoList2State> buildReducer() {
  return asReducer(
    <Object, Reducer<DemoList2State>>{
      DemoList2Action.action: _onAction,
    },
  );
}

DemoList2State _onAction(DemoList2State state, Action action) {
  final DemoList2State newState = state.clone();
  return newState;
}

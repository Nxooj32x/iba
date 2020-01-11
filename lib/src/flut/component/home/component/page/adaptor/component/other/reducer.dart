import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<OtherState> buildReducer() {
  return asReducer(
    <Object, Reducer<OtherState>>{
      OtherAction.action: _onAction,
    },
  );
}

OtherState _onAction(OtherState state, Action action) {
  final OtherState newState = state.clone();
  return newState;
}

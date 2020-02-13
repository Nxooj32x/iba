import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TopState> buildReducer() {
  return asReducer(
    <Object, Reducer<TopState>>{
      TopAction.action: _onAction,
    },
  );
}

TopState _onAction(TopState state, Action action) {
  final TopState newState = state.clone();
  return newState;
}

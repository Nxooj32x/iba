import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FindDataState> buildReducer() {
  return asReducer(
    <Object, Reducer<FindDataState>>{
      FindDataAction.action: _onAction,
    },
  );
}

FindDataState _onAction(FindDataState state, Action action) {
  final FindDataState newState = state.clone();
  return newState;
}

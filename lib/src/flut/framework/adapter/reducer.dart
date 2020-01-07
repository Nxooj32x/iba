import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<BootAdapterState> buildReducer() {
  return asReducer(
    <Object, Reducer<BootAdapterState>>{
      BootAction.action: _onAction,
    },
  );
}

BootAdapterState _onAction(BootAdapterState state, Action action) {
  final BootAdapterState newState = state.clone();
  return newState;
}

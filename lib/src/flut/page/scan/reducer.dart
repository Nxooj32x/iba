import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ScanState> buildReducer() {
  return asReducer(
    <Object, Reducer<ScanState>>{
      ScanAction.action: _onAction,
    },
  );
}

ScanState _onAction(ScanState state, Action action) {
  final ScanState newState = state.clone();
  return newState;
}

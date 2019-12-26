import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<MeState> buildReducer() {
  return asReducer(
    <Object, Reducer<MeState>>{
      MeAction.action: _onAction,
    },
  );
}

MeState _onAction(MeState state, Action action) {
  final MeState newState = state.clone();
  return newState;
}

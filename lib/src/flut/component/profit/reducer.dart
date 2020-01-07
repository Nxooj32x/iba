import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<ProfitState> buildReducer() {
  return asReducer(
    <Object, Reducer<ProfitState>>{
      ProfitAction.action: _onAction,
    },
  );
}

ProfitState _onAction(ProfitState state, Action action) {
  final ProfitState newState = state.clone();
  return newState;
}

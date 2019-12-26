import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<RankingState> buildReducer() {
  return asReducer(
    <Object, Reducer<RankingState>>{
      RankingAction.action: _onAction,
    },
  );
}

RankingState _onAction(RankingState state, Action action) {
  final RankingState newState = state.clone();
  return newState;
}

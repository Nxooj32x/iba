import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<EntranceState> buildReducer() {
  return asReducer(
    <Object, Reducer<EntranceState>>{
      EntranceAction.action: _onAction,
      EntranceAction.pageChanged: _pageChanged,
      EntranceAction.barTap: _barTap
    },
  );
}

EntranceState _onAction(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  return newState;
}

EntranceState _pageChanged(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  if (newState.currentPageIndex != action.payload['index']) {
    newState.currentPageIndex = action.payload['index'];
  }
  return newState;
}


EntranceState _barTap(EntranceState state, Action action) {
  final EntranceState newState = state.clone();
  return newState;
}


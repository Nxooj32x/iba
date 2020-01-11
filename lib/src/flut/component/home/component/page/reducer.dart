import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<TabViewState> buildReducer() {
  return asReducer(
    <Object, Reducer<TabViewState>>{
      TabViewAction.action: _onAction,
    },
  );
}

TabViewState _onAction(TabViewState state, Action action) {
  final TabViewState newState = state.clone();
  return newState;
}

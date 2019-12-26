import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PageListState> buildReducer() {
  return asReducer(
    <Object, Reducer<PageListState>>{
      PageListAction.action: _onAction,
    },
  );
}

PageListState _onAction(PageListState state, Action action) {
  final PageListState newState = state.clone();
  return newState;
}

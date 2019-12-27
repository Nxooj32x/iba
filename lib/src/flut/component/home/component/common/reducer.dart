import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PageState> buildReducer() {
  return asReducer(
    <Object, Reducer<PageState>>{
      PageAction.action: _onAction,
    },
  );
}

PageState _onAction(PageState state, Action action) {
  final PageState newState = state.clone();
  return newState;
}

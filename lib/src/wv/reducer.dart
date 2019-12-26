import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<WebState> buildReducer() {
  return asReducer(
    <Object, Reducer<WebState>>{
      WebAction.action: _onAction
    },
  );
}

WebState _onAction(WebState state, Action action) {
  final WebState newState = state.clone();
  return newState;
}


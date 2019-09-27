import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<IndexState> buildReducer() {
  return asReducer(
    <Object, Reducer<IndexState>>{
      IndexAction.action: _onAction,
      IndexAction.update: _onUpdate,
    },
  );
}

IndexState _onAction(IndexState state, Action action) {
  final IndexState newState = state.clone();
  return newState;
}


IndexState _onUpdate(IndexState state, Action action) {
  println('Reducer: _update');
  final Map<String, String> update = action.payload ?? <String, String>{};//获取action附带的数据
  final IndexState newState = state.clone();
  newState.title = update['title'] ?? newState.title;
  newState.content = update['content'] ?? newState.content;
  return newState;
}
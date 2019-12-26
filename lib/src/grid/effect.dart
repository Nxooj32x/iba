import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/store/action.dart';
import 'package:iba/src/store/store.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart' hide Action;

Effect<GridState> buildEffect() {
  return combineEffects(<Object, Effect<GridState>>{
    Lifecycle.initState: _init,
    GridAction.action: _onAction,
    GridAction.onList: _onList,
  GridAction.changeName: _changeName
  });
}

void _onAction(Action action, Context<GridState> ctx) {

}

void _changeName(Action action, Context<GridState> ctx) {
  GlobalStore.store.dispatch(GlobalActionCreator.onchangeName("grid trigger"));
}

void _onList(Action action, Context<GridState> ctx) {
  Navigator.of(ctx.context).pushNamed('list_page',arguments:{'source':'gride_page','target':'list_page'});
}

void _init(Action action, Context<GridState> ctx) {
  ctx.dispatch(GridActionCreator.onLoadData());
}

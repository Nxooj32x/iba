import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<CategoryState> buildEffect() {
  return combineEffects(<Object, Effect<CategoryState>>{
    CategoryAction.action: _onAction,
    Lifecycle.initState: _onInitSate,
  });
}

void _onAction(Action action, Context<CategoryState> ctx) {
}

void _onInitSate(Action action, Context<CategoryState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.dispatch(CategoryActionCreator.onInitData(tickerProvider));
}

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<DemoState> buildEffect() {
  return combineEffects(<Object, Effect<DemoState>>{
    Lifecycle.initState: _initState,
    DemoAction.action: _onAction,
  });
}

void _onAction(Action action, Context<DemoState> ctx) {
}

void _initState(Action action, Context<DemoState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.state.tabController =
  new TabController(length: 2, vsync: tickerProvider);
}

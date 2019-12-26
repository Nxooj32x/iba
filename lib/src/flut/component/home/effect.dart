import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.action: _onAction,
    Lifecycle.initState: _initState,
    Lifecycle.dispose: _dispose
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}

void _initState(Action action, Context<HomeState> ctx) {
  ctx.state.tabController.addListener(() {//TabBar的监听
    if (ctx.state.tabController.indexIsChanging) {//判断TabBar是否切换
      ctx.dispatch(HomeActionCreator.onPageChange());
    }
  });
}

void _dispose(Action action, Context<HomeState> ctx) {
}
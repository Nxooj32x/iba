import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.action: _onAction,
    HomeAction.pageChange: _pageChange,
    Lifecycle.initState: _initState,
    Lifecycle.dispose: _dispose
  });
}

void _onAction(Action action, Context<HomeState> ctx) {
}

void _initState(Action action, Context<HomeState> ctx){
  ctx.state.tabController.addListener(() async {//TabBar的监听
    if (ctx.state.tabController.indexIsChanging) {//判断TabBar是否切换
      ctx.dispatch(HomeActionCreator.onChangeState(false));
      ctx.state.mPageController.jumpToPage(ctx.state.tabController.index);//等待pageview切换完毕,再释放pageivew监听
      ctx.dispatch(HomeActionCreator.onChangeState(true));
    }
  });
}

void _dispose(Action action, Context<HomeState> ctx) {
}

void _pageChange (Action action, Context<HomeState> ctx) {
  ctx.state.tabController.animateTo(action.payload);
}

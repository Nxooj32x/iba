import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_tts/flutter_tts.dart';
import 'package:iba/src/flut/model/home/home_model.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';
import 'action.dart';
import 'state.dart';

Effect<BootState> buildEffect() {
  return combineEffects(<Object, Effect<BootState>>{
    BootAction.action: _onAction,
    BootAction.switchNavigationBar: _switchNavigationBar,
    Lifecycle.initState: _initState,
    Lifecycle.dispose: _dispose
  });
}

void _onAction(Action action, Context<BootState> ctx) {
}

void _initState(Action action, Context<BootState> ctx) {
  TickerProvider tickerProvider = ctx.stfState as TickerProvider;
  ctx.dispatch(BootActionCreator.onInitData([
    NavigationItem(
      icon: 'assets/navigation_home.png',
      activeIcon: 'assets/navigation_home_selected.png',
      title: '首页',
      type: 'home'
    ),
    NavigationItem(
      icon: 'assets/navigation_classify.png',
      activeIcon: 'assets/navigation_classify_selected.png',
      title: '分类',
      type: 'classify'
    ),
    NavigationItem(
      icon: 'assets/navigation_society.png',
      activeIcon: 'assets/navigation_society_selected.png',
      title: '社区',
      type: 'community'
    ),
    NavigationItem(
      icon: 'assets/navigation_earnings.png',
      activeIcon: 'assets/navigation_earnings_selected.png',
      title: '收益',
      type: 'profit'
    ),
    NavigationItem(
      icon: 'assets/navigation_my.png',
      activeIcon: 'assets/navigation_my_selected.png',
      title: '我的',
      type: 'my'
    ),
  ],tickerProvider));
}

void _dispose(Action action, Context<BootState> ctx) {
  ctx.state.controller.dispose();
  ctx.state.homeState.tabController.dispose();
}

void _switchNavigationBar(Action action, Context<BootState> ctx) {
    ctx. state.controller.jumpToPage(action.payload['index']);
    ctx.dispatch(BootActionCreator.onPageChanged(action.payload['index']));
}
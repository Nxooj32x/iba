import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
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
  GlobalKey appBarKey = GlobalKey();
  List<HomeTabModel> list = [
    HomeTabModel(tabName: '精选',type: '0001',prop: null),
    HomeTabModel(tabName: '猜你喜欢',type: '0010',prop: null),
    HomeTabModel(tabName: 'Walker',type: '0011',prop: null),
    HomeTabModel(tabName: '艾兰',type: '0100',prop: null),
    HomeTabModel(tabName: 'Red Cape',type: '0101',prop: null),
    HomeTabModel(tabName: 'Oops',type: '0111',prop: null),
    HomeTabModel(tabName: '春分',type: '1000',prop: null),
    HomeTabModel(tabName: '芒种',type: '1001',prop: null),
    HomeTabModel(tabName: '惊蛰',type: '1011',prop: null),
    HomeTabModel(tabName: '霜降',type: '1100',prop: null),
  ];

  HomeModel homeModel = new HomeModel(list: list);
  ctx.dispatch(BootActionCreator.onInitData([
    ctx.buildComponent('homeComponent'),
    Container(child: Center(child: Text("分类")),),
    Container(child: Center(child: Text("社区")),),
    Container(child: Center(child: Text("收益")),),
    Container(child: Center(child: Text("我的")),),
  ],tickerProvider,appBarKey,homeModel));
}

void _dispose(Action action, Context<BootState> ctx) {
  ctx.state.controller.dispose();
  ctx.state.tabController.dispose();
}

void _switchNavigationBar(Action action, Context<BootState> ctx) {
    ctx. state.controller.jumpToPage(action.payload['index']);
    ctx.dispatch(BootActionCreator.onPageChanged(action.payload['index']));
}
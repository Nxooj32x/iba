import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/flut/component/home/state.dart';
import 'package:iba/src/flut/model/home/home_model.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';

import 'action.dart';
import 'state.dart';

Reducer<BootState> buildReducer() {
  return asReducer(
    <Object, Reducer<BootState>>{
      BootAction.action: _onAction,
      BootAction.pageChanged: _pageChanged,
      BootAction.initData: _initData
    },
  );
}

BootState _onAction(BootState state, Action action) {
  final BootState newState = state.clone();
  return newState;
}

BootState _pageChanged(BootState state, Action action) {
  final BootState newState = state.clone();
  newState.selectedIndex = action.payload['index'];
  return newState;
}

BootState _initData(BootState state, Action action) {
  final BootState newState = state.clone();
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
  newState.navigationItem = action.payload['navigationItems'];
  TickerProvider payload = action.payload['tickerProvider'];
  HomeModel homeModel = new HomeModel(list: list);
  newState.homeState = HomeState(homeModel: homeModel,appBarKey: appBarKey,tabController:new TabController(length: homeModel.list.length, vsync: payload));
  return newState;
}


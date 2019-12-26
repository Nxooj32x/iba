import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/flut/model/home/home_model.dart';

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
  TickerProvider payload = action.payload['tickerProvider'];
  HomeModel homeModel = action.payload['homeModel'];
  GlobalKey appBarKey = action.payload['appBarKey'];
  final BootState newState = state.clone();
  newState.widgetOptions = action.payload['widgets'];
  newState.tabController = new TabController(length: homeModel.list.length, vsync: payload);
  newState.mPageController = PageController(initialPage: 0);
  newState.appBarKey = appBarKey;
  newState.homeModel = homeModel;
  return newState;
}


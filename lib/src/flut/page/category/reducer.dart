import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Reducer<CategoryState> buildReducer() {
  return asReducer(
    <Object, Reducer<CategoryState>>{
      CategoryAction.action: _onAction,
      CategoryAction.initData: _onInitData
    },
  );
}

CategoryState _onAction(CategoryState state, Action action) {
  final CategoryState newState = state.clone();
  return newState;
}

CategoryState _onInitData(CategoryState state, Action action) {
  final CategoryState newState = state.clone();
  TickerProvider tickerProvider =action.payload;
  newState.tabController = TabController(length: 2, vsync: tickerProvider);
  return newState;
}

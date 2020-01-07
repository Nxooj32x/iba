import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/flut/model/home/home_model.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeState>>{
      HomeAction.action: _onAction,
      HomeAction.initData: _onInitData,
    },
  );
}

HomeState _onAction(HomeState state, Action action) {
  final HomeState newState = state.clone();
  return newState;
}

HomeState _onInitData(HomeState state, Action action) {
  final HomeState newState = state.clone();
  return newState;
}

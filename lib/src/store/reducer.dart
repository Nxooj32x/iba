import 'dart:ui';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Reducer<GlobalState> buildReducer() {
  return asReducer(
    <Object, Reducer<GlobalState>>{
      GlobalAction.changeThemeColor: _onchangeThemeColor,
      GlobalAction.changeName: _changeName
    },
  );
}
GlobalState _onchangeThemeColor(GlobalState state, Action action) {
  final Color color =
  state.themeColor == Colors.green ? Colors.blue : Colors.green;
  return state.clone()..themeColor = color;
}

GlobalState _changeName(GlobalState state, Action action) {
  return state.clone()..name = action.payload;
}

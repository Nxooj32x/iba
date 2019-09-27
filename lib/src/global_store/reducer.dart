import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/global_store/action.dart';
import 'package:iba/src/global_store/state.dart';

Reducer<GlobalState> buildReducer() {
  return asReducer(
    <Object, Reducer<GlobalState>>{
      GlobalAction.change: _onchange,
    },
  );
}

GlobalState _onchange(GlobalState state, Action action) {

  return state.clone();
}

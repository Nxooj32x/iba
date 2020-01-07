import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/flut/model/home/home_model.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';
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

}

void _dispose(Action action, Context<HomeState> ctx) {

}


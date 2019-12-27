import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<SearchState> buildEffect() {
  return combineEffects(<Object, Effect<SearchState>>{
    SearchAction.action: _onAction,
    SearchAction.scan: _onScan
  });
}

void _onAction(Action action, Context<SearchState> ctx) {
}

void _onScan(Action action, Context<SearchState> ctx) {
  Navigator.of(ctx.context).pushNamed('scan');
}

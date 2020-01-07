import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:fluttertoast/fluttertoast.dart';
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
  Navigator.of(ctx.context).pushNamed('scan').then((value){
    if (value != null) {
      Fluttertoast.showToast(
          msg: value,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          fontSize: 16.0
      );
    }
  });
}

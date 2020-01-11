import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

//TODO replace with your own action
enum CategoryAction { action,initData }

class CategoryActionCreator {
  static Action onAction() {
    return const Action(CategoryAction.action);
  }

  static Action onInitData(TickerProvider tickerProvider) {
    return  Action(CategoryAction.initData,payload: tickerProvider);
  }
}

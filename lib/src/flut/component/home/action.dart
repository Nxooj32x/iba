import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;

//TODO replace with your own action
enum HomeAction { action ,initData,pageChange}

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action);
  }

  static Action onInitData() {
    return Action(HomeAction.initData);
  }

  static Action onPageChange() {
    return Action(HomeAction.pageChange);
  }
}

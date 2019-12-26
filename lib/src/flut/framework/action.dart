import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/flut/model/home/home_model.dart';

//TODO replace with your own action
enum BootAction { action ,switchNavigationBar,pageChanged,initData}

class BootActionCreator {
  static Action onAction() {
    return const Action(BootAction.action);
  }

  static Action onSwitchNavigationBar(int index) {
    return Action(BootAction.switchNavigationBar,payload: {'index':index});
  }

  static Action onPageChanged(int index) {
    return Action(BootAction.pageChanged,payload: {'index':index});
  }

  static Action onInitData(List<Widget> widgets, TickerProvider tickerProvider, GlobalKey appBarKey,HomeModel homeModel ) {
    return Action(BootAction.initData,payload: {'widgets':widgets,'tickerProvider':tickerProvider,'appBarKey':appBarKey,'homeModel':homeModel});
  }
}

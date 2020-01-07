import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/home/state.dart';
import 'package:iba/src/flut/framework/adapter/state.dart';
import 'package:iba/src/flut/model/home/home_model.dart';

class BootState implements Cloneable<BootState> {
  /// 范型为自定义的导航项目类的列表，用于统一管理导航项目。
  List<NavigationItem> navigationItem;

  int selectedIndex = 0;

  /// 页面控制器（`PageController`）组件，页面视图（`PageView`）的控制器。
  PageController controller;

  BootState({this.selectedIndex, this.controller,this.homeState});

  HomeState homeState;

  @override
  BootState clone() {
    return BootState()
      ..selectedIndex = selectedIndex
      ..controller = controller
      ..navigationItem = navigationItem
    ..homeState = homeState;
  }
}

BootState initState(Map<String, dynamic> args) {
  return BootState(
      selectedIndex: 0, controller: PageController(initialPage: 0));
}

/// 自定义的导航项目类，包含底部导航栏项目（`BottomNavigationBarItem`）组件需要的数据。
class NavigationItem {
  final String icon;
  final String activeIcon;
  final String title;
  final String type;

  NavigationItem({
    this.icon,
    this.activeIcon,
    this.title,
    this.type
  });
}


class BootListConnector extends Reselect2<BootState, BootAdapterState,  List<NavigationItem>,HomeState> {
  @override
  BootAdapterState computed(List<NavigationItem> sub0,HomeState sub1) {
    return BootAdapterState(navigationItem: sub0,homeState: sub1);
  }

  @override
  List<NavigationItem> getSub0(BootState state) {
    return state.navigationItem;
  }

  @override
  HomeState getSub1(BootState state) {
    return state.homeState;
  }

  @override
  void set(BootState state, BootAdapterState subState) {
   // throw Exception('Unexcepted to set PageState from ReportState');
  }
}

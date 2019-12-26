import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/home/state.dart';
import 'package:iba/src/flut/model/home/home_model.dart';

class BootState implements Cloneable<BootState> {
  /// 范型为自定义的导航项目类的列表，用于统一管理导航项目。
  List<NavigationItem> navigationItem = [
    NavigationItem(
      icon: 'assets/navigation_home.png',
      activeIcon: 'assets/navigation_home_selected.png',
      title: '首页',
    ),
    NavigationItem(
      icon: 'assets/navigation_classify.png',
      activeIcon: 'assets/navigation_classify_selected.png',
      title: '分类',
    ),
    NavigationItem(
      icon: 'assets/navigation_society.png',
      activeIcon: 'assets/navigation_society_selected.png',
      title: '社区',
    ),
    NavigationItem(
      icon: 'assets/navigation_earnings.png',
      activeIcon: 'assets/navigation_earnings_selected.png',
      title: '收益',
    ),
    NavigationItem(
      icon: 'assets/navigation_my.png',
      activeIcon: 'assets/navigation_my_selected.png',
      title: '我的',
    ),
  ];

  int selectedIndex = 0;

  /// 页面控制器（`PageController`）组件，页面视图（`PageView`）的控制器。
  PageController controller;

  PageController mPageController;

  List<Widget> widgetOptions = [];

  BootState({this.selectedIndex, this.controller, this.mPageController});

  //首页数据
  GlobalKey appBarKey;
  TabController tabController;
  HomeModel homeModel;
  @override
  BootState clone() {
    return BootState()
      ..selectedIndex = selectedIndex
      ..widgetOptions = widgetOptions
      ..controller = controller
      ..navigationItem = navigationItem
      ..appBarKey = appBarKey
      ..tabController = tabController
      ..homeModel = homeModel
      ..mPageController = mPageController;
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

  NavigationItem({
    this.icon,
    this.activeIcon,
    this.title,
  });
}

class HomeConnector extends Reselect4<BootState, HomeState, GlobalKey, TabController,HomeModel,PageController> {
  @override
  HomeState computed(GlobalKey sub0, TabController sub1,HomeModel sub2,PageController pageController) {
    return HomeState(homeModel: sub2,appBarKey: sub0,tabController: sub1, mPageController: pageController);
  }

  @override
  GlobalKey getSub0(BootState state) {
    return state.appBarKey;
  }

  @override
  TabController getSub1(BootState state) {
    return state.tabController;
  }

  @override
  HomeModel getSub2(BootState state) {
    return state.homeModel;
  }

  @override
  PageController getSub3(BootState state) {
    return state.mPageController;
  }

  @override
  void set(BootState state, HomeState subState) {
    //throw Exception('Unexcepted to set PageState from ReportState');
  }
}

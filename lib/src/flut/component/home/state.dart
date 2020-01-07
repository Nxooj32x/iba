import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/search/state.dart';
import 'package:iba/src/flut/model/home/home_model.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';
class HomeState implements Cloneable<HomeState> {
  GlobalKey appBarKey;
  TabController tabController;
  HomeModel homeModel;

  bool isPageCanChanged = true;

  HomeState({this.homeModel,this.appBarKey,this.tabController});

  @override
  HomeState clone() {
    return HomeState()..tabController = tabController ..appBarKey = appBarKey ..homeModel = homeModel ..isPageCanChanged = isPageCanChanged;
  }
}

HomeState initState(Map<String, dynamic> args) {

  List<HomeTabModel> list = [
    HomeTabModel(tabName: '精选',type: '0001',prop: null),
    HomeTabModel(tabName: '猜你喜欢',type: '0010',prop: null),
    HomeTabModel(tabName: 'Walker',type: '0011',prop: null),
    HomeTabModel(tabName: '艾兰',type: '0100',prop: null),
    HomeTabModel(tabName: 'Red Cape',type: '0101',prop: null),
    HomeTabModel(tabName: 'Oops',type: '0111',prop: null),
    HomeTabModel(tabName: '春分',type: '1000',prop: null),
    HomeTabModel(tabName: '芒种',type: '1001',prop: null),
    HomeTabModel(tabName: '惊蛰',type: '1011',prop: null),
    HomeTabModel(tabName: '霜降',type: '1100',prop: null),
  ];
  HomeModel homeModel = new HomeModel(list: list);
  return HomeState(homeModel: homeModel);
}


class SearchConnector extends Reselect2<HomeState, SearchState, int, int> {
  @override
  SearchState computed(int sub0, int sub1) {
    return SearchState();
  }

  @override
  int getSub0(HomeState state) {
    return 0;
  }

  @override
  int getSub1(HomeState state) {
    return 0;
  }

  @override
  void set(HomeState state, SearchState subState) {
    throw Exception('Unexcepted to set PageState from ReportState');
  }
}

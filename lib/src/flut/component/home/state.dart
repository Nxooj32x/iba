import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/home/component/software/state.dart';
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

  List<HomeTabModel> list;
  HomeModel homeModel = new HomeModel(list: list);
  return HomeState(homeModel: homeModel);
}


class SearchConnector extends Reselect1<HomeState, SearchState, int> {
  @override
  SearchState computed(int sub0) {
    return SearchState();
  }

  @override
  int getSub0(HomeState state) {
    return 0;
  }


  @override
  void set(HomeState state, SearchState subState) {
    throw Exception('Unexcepted to set PageState from ReportState');
  }
}

class SoftWareConnector extends Reselect1<HomeState, SoftWareState, int> {
  @override
  SoftWareState computed(int sub0) {
    return SoftWareState();
  }

  @override
  int getSub0(HomeState state) {
    return 0;
  }


  @override
  void set(HomeState state, SoftWareState subState) {
    throw Exception('Unexcepted to set PageState from ReportState');
  }
}


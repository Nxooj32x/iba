import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/home/component/find/state.dart';
import 'package:iba/src/flut/component/home/component/software/state.dart';
import 'package:iba/src/flut/component/search/state.dart';
import 'package:iba/src/flut/model/constants.dart';
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


class SoftWareConnector extends Reselect1<HomeState, SoftWareState, String> {
  @override
  SoftWareState computed(String sub0) {
    return SoftWareState();
  }

  @override
  String getSub0(HomeState state) {
    return "";
  }

  @override
  void set(HomeState state, SoftWareState subState) {
    throw Exception('Unexcepted to set PageState from ReportState');
  }
}

class FindConnector extends Reselect1<HomeState, FindState, String> {
  @override
  FindState computed(String sub0) {
    return FindState();
  }

  @override
  String getSub0(HomeState state) {
    return "";
  }

  @override
  void set(HomeState state, FindState subState) {
    throw Exception('Unexcepted to set PageState from ReportState');
  }
}

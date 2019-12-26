import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/search/state.dart';
import 'package:iba/src/flut/model/home/home_model.dart';

class HomeState implements Cloneable<HomeState> {
  GlobalKey appBarKey;
  TabController tabController;
  HomeModel homeModel;
  PageController mPageController = PageController(initialPage: 0);

  bool isPageCanChanged = true;

  HomeState({this.homeModel,this.appBarKey,this.tabController});

  @override
  HomeState clone() {
    return HomeState()..tabController = tabController ..appBarKey = appBarKey ..homeModel = homeModel ..mPageController = mPageController ..isPageCanChanged = isPageCanChanged;
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState();
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
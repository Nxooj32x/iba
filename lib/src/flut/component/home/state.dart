import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/search/state.dart';
import 'package:iba/src/flut/model/home/home_model.dart';
import 'adapter/state.dart';
class HomeState implements Cloneable<HomeState> {
  GlobalKey appBarKey;
  TabController tabController;
  HomeModel homeModel;
  PageController mPageController;

  bool isPageCanChanged = true;

  HomeState({this.homeModel,this.appBarKey,this.tabController, this.mPageController});

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


class PageListConnector extends Reselect1<HomeState, PageListState, HomeModel> {
  @override
  PageListState computed(HomeModel sub0) {
    return PageListState(homeModel: sub0);
  }

  @override
  HomeModel getSub0(HomeState state) {
    return state.homeModel;
  }


  @override
  void set(HomeState state, PageListState subState) {
    throw Exception('Unexcepted to set PageState from ReportState');
  }
}
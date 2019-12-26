import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'pageview/function_component/state.dart';
import 'pageview/home_component/state.dart';
import 'pageview/me_component/state.dart';
import 'pageview/ranking_component/state.dart';
import 'package:iba/src/store/state.dart';

import 'pageview/friend_component/state.dart';

class EntranceState implements Cloneable<EntranceState>, GlobalBaseState {
  int currentPageIndex;
  PageController pageController;

  List<String> searchMessage = ["每天开心一点- - 元气满满的", "每一天都在继续- -么么哒", "工具通知 - - 协同你前进"];

  HomeState homeState = new HomeState();

  FunctionState functionState;

  RankingState rankingState;

  FriendState friendState;

  MeState meState;

  EntranceState({this.currentPageIndex, this.pageController});

  @override
  EntranceState clone() {
    return EntranceState()
      ..themeColor = themeColor
      ..name = name
      ..currentPageIndex = currentPageIndex
      ..pageController = pageController
      ..homeState = homeState
      ..functionState = functionState
      ..rankingState = rankingState;
  }

  @override
  Color themeColor;

  @override
  String name;
}

EntranceState initState(Map<String, dynamic> args) {
  return EntranceState(
      currentPageIndex: 0, pageController: PageController(initialPage: 0));
}

ConnOp<EntranceState, HomeState> homeConnector() {
  return ConnOp<EntranceState, HomeState>(
      get: (EntranceState state) => state.homeState,
      set: (EntranceState entranceState, HomeState homeState){
      homeState = entranceState.homeState;
  });
}


ConnOp<EntranceState, FunctionState> functionConnector() {
  return ConnOp<EntranceState, FunctionState>(
      get: (EntranceState state) => state.functionState,
      set: (EntranceState entranceState, FunctionState functionState) => {});
}

ConnOp<EntranceState, RankingState> rankingConnector() {
  return ConnOp<EntranceState, RankingState>(
      get: (EntranceState state) => state.rankingState,
      set: (EntranceState entranceState, RankingState rankingState) => {});
}

ConnOp<EntranceState, FriendState> friendConnector() {
  return ConnOp<EntranceState, FriendState>(
      get: (EntranceState state) => state.friendState,
      set: (EntranceState entranceState, FriendState friendState) => {});
}


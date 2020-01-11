import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TabViewState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter listAdapter = viewService.buildAdapter();
  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    state.refreshController.refreshCompleted();
  }
  return  SmartRefresher(
      header: WaterDropHeader(complete: Text("刷新完成",style: TextStyle(fontSize: 14,color: Colors.black26),),),
      controller: state.refreshController,
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemBuilder:listAdapter.itemBuilder,
        itemCount: listAdapter.itemCount,
      ));
}

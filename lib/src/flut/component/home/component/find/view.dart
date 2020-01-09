import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'state.dart';

Widget buildView(FindState state, Dispatch dispatch, ViewService viewService) {
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    state.refreshController.refreshCompleted();
  }
  ListAdapter listAdapter = viewService.buildAdapter();
  return SmartRefresher(
      header: WaterDropHeader(complete: Text("刷新完成",style: TextStyle(fontSize: 14,color: Colors.black26),),),
      controller: state.refreshController,
      onRefresh: _onRefresh,
      child: ListView.builder(
        itemBuilder:listAdapter.itemBuilder,
        itemCount: listAdapter.itemCount,
      ));
}

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(DemoState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      appBar: AppBar(
        title: TabBar(
          controller: state.tabController,
          tabs: <Widget>[
            Tab(text: '女装'),
            Tab(text: '男装'),
          ],
        ),
      ),
      body: TabBarView(
        controller: state.tabController,
        children: <Widget>[
          viewService.buildComponent('demoList1'),
          viewService.buildComponent('demoList2'),
        ],
      ));;
}

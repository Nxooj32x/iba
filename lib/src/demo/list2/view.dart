import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(DemoList2State state, Dispatch dispatch, ViewService viewService) {
  return ListView(
    children: <Widget>[
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
      ListTile(title: Text(state.TITLE),subtitle: Text(state.SUB_TITLE),),
    ],
  );
}

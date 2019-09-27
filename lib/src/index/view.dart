import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(IndexState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(title: Text(state.title)),
    body: Center(child: Text(state.content),),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        //点击按钮发送意图
        dispatch(IndexActionCreator.update('Say', 'Hello, fish redux'));
      },
      child: Icon(Icons.edit),
    ),
  );
}

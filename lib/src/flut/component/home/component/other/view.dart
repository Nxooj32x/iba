import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/home/component/common/state.dart';

Widget buildView(PageState state, Dispatch dispatch, ViewService viewService) {
  return Container(child: Center(child: Text(state.homeTabModel.tabName),),);
}

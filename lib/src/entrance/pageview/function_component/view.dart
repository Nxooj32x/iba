import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FunctionState state, Dispatch dispatch, ViewService viewService) {
  return Center(child: Container(child: Text('function'),));
}

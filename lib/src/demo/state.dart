import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'list/state.dart';
import 'list2/state.dart';

class DemoState implements Cloneable<DemoState>  {
  TabController tabController;
  DemoListState demoListState = new DemoListState();

  DemoList2State demoList2State = new DemoList2State();
  @override
  DemoState clone() {
    return DemoState()..tabController..demoListState ..demoList2State;
  }
}

DemoState initState(Map<String, dynamic> args) {
  return DemoState();
}


ConnOp<DemoState, DemoListState> demoConnector() {
  return ConnOp<DemoState, DemoListState>(
      get: (DemoState state) => state.demoListState,
      set: (DemoState demoState, DemoListState demoListState){
        demoListState = demoState.demoListState;
      });
}

ConnOp<DemoState, DemoList2State> demo2Connector() {
  return ConnOp<DemoState, DemoList2State>(
      get: (DemoState state) => state.demoList2State,
      set: (DemoState demoState, DemoList2State demoListState){
        demoListState = demoState.demoList2State;
      });
}
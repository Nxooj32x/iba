import 'package:fish_redux/fish_redux.dart';

import '../api.dart';
import 'action.dart';
import 'state.dart';

Reducer<GridState> buildReducer() {
  return asReducer(
    <Object, Reducer<GridState>>{
      GridAction.action: _onAction,
      GridAction.loadData: _loadData
    },
  );
}

GridState _onAction(GridState state, Action action) {
  final GridState newState = state.clone();
  return newState;
}

GridState _loadData(GridState state, Action action) {
  final GridState newState = state.clone()..models = Api().getGridData();
  return newState;
}

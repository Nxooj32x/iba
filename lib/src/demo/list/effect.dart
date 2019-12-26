import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<DemoListState> buildEffect() {
  return combineEffects(<Object, Effect<DemoListState>>{
    DemoListAction.action: _onAction,
  });
}

void _onAction(Action action, Context<DemoListState> ctx) {
}

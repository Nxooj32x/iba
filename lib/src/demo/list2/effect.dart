import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<DemoList2State> buildEffect() {
  return combineEffects(<Object, Effect<DemoList2State>>{
    DemoList2Action.action: _onAction,
  });
}

void _onAction(Action action, Context<DemoList2State> ctx) {
}

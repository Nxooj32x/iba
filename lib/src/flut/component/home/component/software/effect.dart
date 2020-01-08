import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<SoftWareState> buildEffect() {
  return combineEffects(<Object, Effect<SoftWareState>>{
    SoftWareAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SoftWareState> ctx) {
}

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<OtherState> buildEffect() {
  return combineEffects(<Object, Effect<OtherState>>{
    OtherAction.action: _onAction,
  });
}

void _onAction(Action action, Context<OtherState> ctx) {
}

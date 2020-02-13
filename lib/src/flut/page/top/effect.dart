import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TopState> buildEffect() {
  return combineEffects(<Object, Effect<TopState>>{
    TopAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TopState> ctx) {
}

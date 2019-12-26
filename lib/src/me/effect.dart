import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<MeState> buildEffect() {
  return combineEffects(<Object, Effect<MeState>>{
    MeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<MeState> ctx) {
}

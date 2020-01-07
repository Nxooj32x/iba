import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ProfitState> buildEffect() {
  return combineEffects(<Object, Effect<ProfitState>>{
    ProfitAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ProfitState> ctx) {
}

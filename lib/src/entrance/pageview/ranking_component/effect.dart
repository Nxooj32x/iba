import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<RankingState> buildEffect() {
  return combineEffects(<Object, Effect<RankingState>>{
    RankingAction.action: _onAction,
  });
}

void _onAction(Action action, Context<RankingState> ctx) {
}

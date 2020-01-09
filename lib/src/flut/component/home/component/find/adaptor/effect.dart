import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FindDataState> buildEffect() {
  return combineEffects(<Object, Effect<FindDataState>>{
    FindDataAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FindDataState> ctx) {
}

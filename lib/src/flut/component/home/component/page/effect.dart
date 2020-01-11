import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TabViewState> buildEffect() {
  return combineEffects(<Object, Effect<TabViewState>>{
    TabViewAction.action: _onAction,
  });
}

void _onAction(Action action, Context<TabViewState> ctx) {
}

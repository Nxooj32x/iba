import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PageState> buildEffect() {
  return combineEffects(<Object, Effect<PageState>>{
    PageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PageState> ctx) {
}

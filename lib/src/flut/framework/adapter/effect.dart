import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<BootAdapterState> buildEffect() {
  return combineEffects(<Object, Effect<BootAdapterState>>{
    BootAction.action: _onAction,
  });
}

void _onAction(Action action, Context<BootAdapterState> ctx) {
}

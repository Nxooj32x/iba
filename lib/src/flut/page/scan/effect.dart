import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ScanState> buildEffect() {
  return combineEffects(<Object, Effect<ScanState>>{
    ScanAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ScanState> ctx) {
}

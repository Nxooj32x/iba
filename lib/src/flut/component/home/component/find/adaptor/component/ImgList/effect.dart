import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<ImgListState> buildEffect() {
  return combineEffects(<Object, Effect<ImgListState>>{
    ImgListAction.action: _onAction,
  });
}

void _onAction(Action action, Context<ImgListState> ctx) {
}

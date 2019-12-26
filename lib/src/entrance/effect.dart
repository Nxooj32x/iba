import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter/material.dart' hide Action;

Effect<EntranceState> buildEffect() {
  return combineEffects(<Object, Effect<EntranceState>>{
    EntranceAction.action: _onAction,
    EntranceAction.openGrid: _onOpenGrid,
    EntranceAction.barTap: _onBarTap,
    Lifecycle.initState: _initState,
    Lifecycle.dispose: _dispose,
  });
}

void _onAction(Action action, Context<EntranceState> ctx) {}

void _onOpenGrid(Action action, Context<EntranceState> ctx) {
  if (action.payload['type'] == 'grid') {
    Navigator.of(ctx.context).pushNamed('grid_page',
        arguments: {'source': 'entrance_page', 'target': 'grid_page'});
  } else if (action.payload['type'] == 'webview') {
    Navigator.of(ctx.context).pushNamed('webview_page');
  }
}

void _initState(Action action, Context<EntranceState> ctx) {}

void _dispose(Action action, Context<EntranceState> ctx) {
  ctx.state.pageController.dispose();
}
void _onBarTap(Action action, Context<EntranceState> ctx) {
  if (action.payload['index'] == 4) {
    Navigator.of(ctx.context).pushNamed('login_page',);
  } else {
    ctx.state.pageController.jumpToPage(action.payload['index']);
    ctx.dispatch(EntranceActionCreator.onPageChanged(action.payload['index']));
  }
}
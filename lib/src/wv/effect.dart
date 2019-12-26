import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'action.dart';
import 'state.dart';

Effect<WebState> buildEffect() {
  return combineEffects(<Object, Effect<WebState>>{
    WebAction.action: _onAction,
    Lifecycle.initState: _initState,
    Lifecycle.dispose: _dispose,
    WebAction.launchUrl: _onLaunchUrl,
    WebAction.arrowBack: _onArrowBack,
    WebAction.closeWeb:_onCloseWeb
  });
}

void _onAction(Action action, Context<WebState> ctx) {
}

void _initState(Action action, Context<WebState> ctx) {
  ctx.state.flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged wvs) {
       print(wvs.type);
 });
}

void _onLaunchUrl(Action action, Context<WebState> ctx) {
  ctx.state.flutterWebviewPlugin.reloadUrl(ctx.state.controller.text);
}

void _onArrowBack(Action action, Context<WebState> ctx) {
  ctx.state.flutterWebviewPlugin.goBack();
}

void _onCloseWeb(Action action, Context<WebState> ctx) {
  ctx.state.flutterWebviewPlugin.close();
  Navigator.of(ctx.context).pop();
}

void _dispose(Action action, Context<WebState> ctx){
  ctx.state.controller.dispose();
  ctx.state.flutterWebviewPlugin.dispose();
}

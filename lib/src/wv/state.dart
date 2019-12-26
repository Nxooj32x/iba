import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebState implements Cloneable<WebState>{
  TextEditingController controller;
  FlutterWebviewPlugin flutterWebviewPlugin;

  String urlString;
  WebState({this.controller,this.flutterWebviewPlugin,this.urlString});

  @override
  WebState clone() {
    return WebState()..controller = controller ..flutterWebviewPlugin = flutterWebviewPlugin ..urlString = urlString;
  }
}

WebState initState(Map<String, dynamic> args) {
  return WebState(controller: TextEditingController(),flutterWebviewPlugin: FlutterWebviewPlugin(), urlString:'https://www.baidu.com');
}

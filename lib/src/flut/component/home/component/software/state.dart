import 'package:fish_redux/fish_redux.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoftWareState implements Cloneable<SoftWareState> {

  WebViewController controller;

  @override
  SoftWareState clone() {
    return SoftWareState()..controller = controller;
  }
}

SoftWareState initState(Map<String, dynamic> args) {
  return SoftWareState();
}

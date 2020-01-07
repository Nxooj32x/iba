import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ClassifyState implements Cloneable<ClassifyState> {

  WebViewController controller;
  ClassifyState();
  @override
  ClassifyState clone() {
    return ClassifyState()..controller = controller;
  }
}

ClassifyState initState(Map<String, dynamic> args) {
  return ClassifyState();
}

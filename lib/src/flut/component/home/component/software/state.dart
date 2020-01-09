import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/model/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoftWareState implements Cloneable<SoftWareState> {

  WebViewController controller;
  String url ;
  SoftWareState(){
    Dio().get(Constants.URL_CHECK_VERSION).then((result) {
      print(result);
      String url = result.data[1]["url"].toString();
      this.url = url;
    });
  }
  @override
  SoftWareState clone() {
    return SoftWareState()..controller = controller ..url = url;
  }
}

SoftWareState initState(Map<String, dynamic> args) {
  return SoftWareState();
}

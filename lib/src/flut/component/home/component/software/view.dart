import 'dart:isolate';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iba/src/flut/model/constants.dart';
import 'package:vibrate/vibrate.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'action.dart';
import 'state.dart';

/**
 * <!DOCTYPE html>
    <html lang="en">
    <head>
    <meta charset="UTF-8">
    <title>WebView</title>
    </head>
    <body style="text-align: center">
    <h4>WebView</h4>
    <button onclick="reload()">reload</button><br/>
    <button onclick="callFlutter1()">callFlutter1</button><br/>
    <br/>
    <br/>
    <button onclick="callFlutter2()">callFlutter2</button>
    <p id="p1" style="visibility:hidden;">
    Flutter 调用了 JS.
    Flutter 调用了 JS.
    Flutter 调用了 JS.
    </p>
    </body>
    <script>
    function reload(){
    TaoGeToken_reload.postMessage(new Date().getMilliseconds());
    }
    function callFlutter1(){
    TaoGeToken_alert.postMessage(new Date().getMilliseconds());
    }
    function callFlutter2(){
    /*约定的url协议为：js://webview?arg1=111&arg2=222*/
    document.location = "js://webview?arg1=111&args2=222";
    }

    function callJS(message){
    document.getElementById("p1").style.visibility = message;
    return 1
    }
    </script>
    </html>
 */
Widget buildView(
    SoftWareState state, Dispatch dispatch, ViewService viewService) {
  ///js与flutter交互
//  JavascriptChannel _alertJavascriptChannel(BuildContext context) {
//    return JavascriptChannel(
//        name: 'TaoGeToken_alert', //invoke要和网页协商一致
//        onMessageReceived: (JavascriptMessage message) {
//          print(message.message);
//          state.controller
//              ?.evaluateJavascript('callJS("visible")')
//              ?.then((result) {
//            // You can handle JS result here.
//            Fluttertoast.showToast(msg: result);
//            var dio = Dio();
//            dio.get("http://134.175.57.240/").then((result) {
//              Vibrate.feedback(FeedbackType.success);
//              Fluttertoast.showToast(msg: result.toString());
//            });
//          });
//        });
//  }
//
//  JavascriptChannel _reloadJavascriptChannel(BuildContext context) {
//    return JavascriptChannel(
//        name: 'TaoGeToken_reload', //invoke要和网页协商一致
//        onMessageReceived: (JavascriptMessage message) {
//          state.controller.reload();
//        });
//  }

  return Scaffold(
    body: WebView(
      initialUrl: state.url,
      ///初始化url
      javascriptMode: JavascriptMode.unrestricted,

      ///JS执行模式
      onWebViewCreated: (WebViewController webViewController) {
        ///在WebView创建完成后调用，只会被调用一次
        state.controller = webViewController;
      },
      javascriptChannels: <JavascriptChannel>[
        ///JS和Flutter通信的Channel；
        //_alertJavascriptChannel(viewService.context),
        //_reloadJavascriptChannel(viewService.context)
      ].toSet(),
      navigationDelegate: (NavigationRequest request) {
        //路由委托（可以通过在此处拦截url实现JS调用Flutter部分）；
        ///通过拦截url来实现js与flutter交互
        if (request.url.startsWith('js://webview')) {
          Fluttertoast.showToast(msg: 'JS调用了Flutter By navigationDelegate');
          print('blocking navigation to $request}');
          return NavigationDecision.prevent;

          ///阻止路由替换，不能跳转，因为这是js交互给我们发送的消息
        }

        if (request.url.endsWith('dev.apk')) {
          Fluttertoast.showToast(msg: '安装包下载中...  请稍后操作');
          print('blocking navigation to $request}');
          final SendPort send =IsolateNameServer.lookupPortByName('downloader_send_port');
          send.send([request.url]);
          return NavigationDecision.prevent;

          ///阻止路由替换，不能跳转，因为这是js交互给我们发送的消息
        }
        return NavigationDecision.navigate;
        ///允许路由替换
      },
      onPageFinished: (String url) {
        Fluttertoast.showToast(msg: '刷新成功');
        print('Page finished loading: $url');
      },
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        state.controller.reload();
      },
      child: Icon(Icons.refresh),
      foregroundColor: Colors.red,
    ),
  );
}

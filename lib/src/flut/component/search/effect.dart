import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iba/src/flut/model/constants.dart';
import 'package:open_file/open_file.dart';
import 'package:ota_update/ota_update.dart';
import 'package:package_info/package_info.dart';
import 'package:path_provider/path_provider.dart';
import 'action.dart';
import 'state.dart';

Effect<SearchState> buildEffect() {
  return combineEffects(<Object, Effect<SearchState>>{
    SearchAction.action: _onAction,
    SearchAction.scan: _onScan,
    SearchAction.checkVersion: _onCheckVersion
  });
}

void _onAction(Action action, Context<SearchState> ctx) {}

void _onScan(Action action, Context<SearchState> ctx) {
  Navigator.of(ctx.context).pushNamed('scan').then((value) {
    if (value != null) {
      Fluttertoast.showToast(
          msg: value,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          fontSize: 16.0);
    }
  });
}

void _onCheckVersion(Action action, Context<SearchState> ctx) {
  Dio().get(Constants.URL_CHECK_VERSION).then((result) {
    print(result);
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      print(packageInfo.version);
      var currentVersionCode = packageInfo.version; //获取当前的版本号
      //如果获取服务器的版本号比当前应用程序的版本号还高，那么提示升级
      if (currentVersionCode.toLowerCase().compareTo(result.data[0]["version"].toString()) == 0) {
        Fluttertoast.showToast(msg: "版本已经是最新的啦",gravity: ToastGravity.CENTER);
      } else {
        String downloadUrl = result.data[0]["url"].toString();
        showDialog<void>(
            context: ctx.context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                  title: new Row(
                    children: <Widget>[
                      new Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                          child: new Text(
                            "TaoGeTalking",
                          ))
                    ],
                  ),
                  content: new Text(
                    "有新版本更新啦~~",
                  ),
                  actions: <Widget>[
                    new FlatButton(
                      child: new Text('稍后操作'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    new FlatButton(
                      child: new Text('下载最新'),
                      onPressed: () async{
                        Directory appDocDir = await getApplicationDocumentsDirectory();
                        String appDocPath = appDocDir.path;
                        OtaUpdate().execute(downloadUrl).listen(
                              (OtaEvent event) {
                            print('status:${event.status},value:${event.value}');
                            switch(event.status){
                              case OtaStatus.DOWNLOADING: // 下载中
                                print('下载进度:${event.value}%');
                                break;
                              case OtaStatus.INSTALLING: //安装中
                                print('-----安装中----');
                                // 打开安装文件
                                //这里的这个Apk文件名可以写，也可以不写
                                //不写的话会出现让你选择用浏览器打开，点击取消就好了，写了后会直接打开当前目录下的Apk文件，名字随便定就可以
                                //OpenFile.open("${appDocPath}/app.apk");
                                break;
                              case OtaStatus.PERMISSION_NOT_GRANTED_ERROR: // 权限错误
                                print('更新失败，请稍后再试');

                                break;
                              default: // 其他问题
                                break;
                            }
                          },
                        );
                        Navigator.of(context).pop();
                      },
                    )
                  ]);
            });
      }
    });
  });
}

import 'dart:isolate';
import 'dart:ui';

import 'package:flutter/material.dart' hide Action;
import 'package:flutter/services.dart';
import 'package:ota_update/ota_update.dart';

import 'src/flut/app.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    SystemChrome.setEnabledSystemUIOverlays(
        [SystemUiOverlay.bottom, SystemUiOverlay.top]);
    ReceivePort _port = ReceivePort();
    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String downloadUrl = data[0];
      OtaUpdate().execute(downloadUrl).listen(
        (OtaEvent event) {
          print('status:${event.status},value:${event.value}');
          switch (event.status) {
            case OtaStatus.DOWNLOADING: // 下载中
              print('下载进度:${event.value}%');
              break;
            case OtaStatus.INSTALLING: //安装中
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
    });
    runApp(createApp());
  });
}

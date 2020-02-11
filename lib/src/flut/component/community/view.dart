import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'state.dart';

Widget buildView(CommunityState state, Dispatch dispatch, ViewService viewService) {
  const platform = const MethodChannel('samples.flutter.io/battery');
  return Container(child: Center(child: IconButton(icon: Icon(Icons.settings_voice), onPressed: (){
    platform.invokeMethod('getBatteryLevel');
//    var flutterTts = new FlutterTts();
//    flutterTts.setLanguage("en-US");
//    flutterTts.setSpeechRate(0.3);
//    flutterTts.setVolume(1.0);
//    flutterTts.setPitch(1.0);
//    flutterTts.speak('晚日寒鸦一片愁。柳塘新绿却温柔。若教眼底无离恨，不信人间有白头。肠已断，泪难收。相思重上小红楼。情知已被山遮断，频倚阑干不自由。');
  })),);
}

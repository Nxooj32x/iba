import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/flut/page/category/page.dart';
import 'package:iba/src/flut/page/mine/page.dart';
import 'package:iba/src/flut/page/scan/page.dart';
import 'package:iba/src/flut/page/search/page.dart';

import 'framework/page.dart';

/// 创建应用的根 Widget
Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'bootPage': BootPage(),
      'scan': ScanPage(),
      'mine': MinePage(),
      'category': CategoryPage(),
      'search': SearchPage()
    },
    visitor: (String path, Page<Object, dynamic> page) {},
  );
  ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails){
    return Center(
      child: Text("Flutter 走神了"),
    );
  };
  return MaterialApp(
    title: 'TaoGeTalking应用',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: routes.buildPage("bootPage", null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}


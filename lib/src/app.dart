import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:iba/src/me/page.dart';
import 'package:iba/src/store/state.dart';
import 'package:iba/src/store/store.dart';

import 'demo/page.dart';
import 'entrance/page.dart';
import 'login/page.dart';
import 'wv/page.dart';
import 'grid/page.dart';
import 'list/page.dart';

/// 创建应用的根 Widget
/// 1. 创建一个简单的路由，并注册页面
/// 2. 对所需的页面进行和 AppStore 的连接
/// 3. 对所需的页面进行 AOP 的增强
Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'entrance_page': EntrancePage(),
      'grid_page' : GridPage(),
      'list_page': ListPage(),
      'webview_page': WebPage(),
      'me_page': MePage(),
      'login_page': LoginPage(),
      'demo_page': DemoPage()
    },
    visitor: (String path, Page<Object, dynamic> page) {
      /// 满足条件 Page<T> ，T 是 GlobalBaseState 的子类。
      if (page.isTypeof<GlobalBaseState>()) {
        /// 建立 AppStore 驱动 PageStore 的单向数据连接
        /// 1. 参数1 AppStore
        /// 2. 参数2 当 AppStore.state 变化时, PageStore.state 该如何变化
        page.connectExtraStore<GlobalState>(
            GlobalStore.store, (Object pagestate, GlobalState appState) {
          final GlobalBaseState p = pagestate;
          if (p.themeColor != appState.themeColor) {
            if (pagestate is Cloneable) {
              final Object copy = pagestate.clone();
              final GlobalBaseState newState = copy;
              newState.themeColor = appState.themeColor;
              return newState;
            }
          }
          if (p.name != appState.name) {
            if (pagestate is Cloneable) {
              final Object copy = pagestate.clone();
              final GlobalBaseState newState = copy;
              newState.name = appState.name;
              return newState;
            }
          }
          return pagestate;
        });
      }
    },
  );

  return MaterialApp(
    title: 'Fluro',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: routes.buildPage("entrance_page", null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}


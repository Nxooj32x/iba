import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';

abstract class GlobalBaseState {
  Color get themeColor;
  set themeColor(Color color);
  String get name;
  set name (String name);
}

class GlobalState implements GlobalBaseState, Cloneable<GlobalState> {
  @override
  Color themeColor;

  @override
  GlobalState clone() {
    return GlobalState();
  }

  @override
  String name = "init";
}

import 'dart:ui';

import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';
import '../store/state.dart';

class ListState implements Cloneable<ListState>,GlobalBaseState {

  List<ItemState> items;

  @override
  ListState clone() {
    return ListState() ..items = items ..themeColor = themeColor..name = name;
  }

  @override
  Color themeColor;

  @override
  String name;
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

class CategoryState implements Cloneable<CategoryState> {

  TabController tabController;
  @override
  CategoryState clone() {
    return CategoryState()..tabController = tabController;
  }
}

CategoryState initState(Map<String, dynamic> args) {
  return CategoryState();
}

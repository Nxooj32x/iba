import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/model/home/home_model.dart';

class PageListState implements Cloneable<PageListState> {

  HomeModel homeModel;

  PageListState({this.homeModel});
  @override
  PageListState clone() {
    return PageListState()..homeModel = homeModel;
  }
}

PageListState initState(Map<String, dynamic> args) {
  return PageListState();
}

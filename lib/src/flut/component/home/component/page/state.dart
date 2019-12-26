import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';

class PageState implements Cloneable<PageState> {

  HomeTabModel homeTabModel;
  PageState({this.homeTabModel});
  @override
  PageState clone() {
    return PageState()..homeTabModel = homeTabModel;
  }
}

PageState initState(Map<String, dynamic> args) {
  return PageState();
}

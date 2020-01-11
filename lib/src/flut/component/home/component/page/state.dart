import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/page/adaptor/state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TabViewState implements Cloneable<TabViewState> {
  RefreshController refreshController;
  String type ;
  TabViewState({this.type,this.refreshController});
  @override
  TabViewState clone() {
    return TabViewState()..type = type ..refreshController = refreshController;
  }
}

TabViewState initState(Map<String, dynamic> args) {
  return TabViewState(type: args["type"], refreshController:RefreshController(initialRefresh: true));
}


class ItemConnector extends Reselect1<TabViewState,ItemState,String> {
  @override
  ItemState computed(String state) {
    // TODO: implement computed
    return ItemState(type: state);
  }

  @override
  String getSub0(TabViewState state) {
    return state.type;
  }

  @override
  void set(TabViewState state, ItemState subState) {

  }
  }

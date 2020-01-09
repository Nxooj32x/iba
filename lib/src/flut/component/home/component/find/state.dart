import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/find/adaptor/state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FindState implements Cloneable<FindState> {
  RefreshController refreshController;
  FindState() {
    refreshController =
        RefreshController(initialRefresh: true);
  }
  @override
  FindState clone() {
    return FindState()..refreshController = refreshController;
  }
}

FindState initState(Map<String, dynamic> args) {
  return FindState();
}

class FindDataConnector extends Reselect1<FindState,FindDataState,String> {
  @override
  FindDataState computed(String state) {
    // TODO: implement computed
    return FindDataState();
  }

  @override
  String getSub0(FindState state) {
    return null;
  }

  @override
  void set(FindState state, FindDataState subState) {
  }
}

import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/state.dart';
import 'package:iba/src/flut/framework/state.dart';

class BootAdapterState implements Cloneable<BootAdapterState> {
  List<NavigationItem> navigationItem ;
  HomeState homeState;
  BootAdapterState({this.navigationItem,this.homeState});
  @override
  BootAdapterState clone() {
    return BootAdapterState()..navigationItem = navigationItem ..homeState = homeState;
  }
}

BootAdapterState initState(Map<String, dynamic> args) {
  return BootAdapterState();
}

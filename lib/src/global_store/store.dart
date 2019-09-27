import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/global_store/reducer.dart';
import 'package:iba/src/global_store/state.dart';

/// 建立一个AppStore
class GlobalStore {
  static Store<GlobalState> _globalStore;

  static Store<GlobalState> get store =>
      _globalStore ??= createStore<GlobalState>(GlobalState(), buildReducer());
}

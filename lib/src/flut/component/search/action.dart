import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SearchAction { action , scan , checkVersion ,mine}

class SearchActionCreator {
  static Action onAction() {
    return const Action(SearchAction.action);
  }

  static Action onScan() {
    return  Action(SearchAction.scan);
  }
  static Action onMine() {
    return  Action(SearchAction.mine);
  }

  static Action onCheckVersion() {
    return  Action(SearchAction.checkVersion);
  }
}

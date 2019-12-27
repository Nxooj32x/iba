import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SearchAction { action , scan}

class SearchActionCreator {
  static Action onAction() {
    return const Action(SearchAction.action);
  }

  static Action onScan() {
    return  Action(SearchAction.scan);
  }
}

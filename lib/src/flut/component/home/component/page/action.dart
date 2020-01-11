import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TabViewAction { action }

class TabViewActionCreator {
  static Action onAction() {
    return const Action(TabViewAction.action);
  }
}

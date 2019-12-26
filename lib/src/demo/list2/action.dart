import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DemoList2Action { action }

class DemoList2ActionCreator {
  static Action onAction() {
    return const Action(DemoList2Action.action);
  }
}

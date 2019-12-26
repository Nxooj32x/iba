import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DemoListAction { action }

class DemoListActionCreator {
  static Action onAction() {
    return const Action(DemoListAction.action);
  }
}

import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TopAction { action }

class TopActionCreator {
  static Action onAction() {
    return const Action(TopAction.action);
  }
}

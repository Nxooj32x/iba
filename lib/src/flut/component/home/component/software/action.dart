import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SoftWareAction { action }

class SoftWareActionCreator {
  static Action onAction() {
    return const Action(SoftWareAction.action);
  }
}

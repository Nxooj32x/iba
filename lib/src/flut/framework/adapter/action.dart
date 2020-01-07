import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum BootAction { action }

class BootActionCreator {
  static Action onAction() {
    return const Action(BootAction.action);
  }
}

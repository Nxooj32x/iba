import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FindDataAction { action }

class FindDataActionCreator {
  static Action onAction() {
    return const Action(FindDataAction.action);
  }
}

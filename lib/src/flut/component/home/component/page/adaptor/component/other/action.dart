import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum OtherAction { action }

class OtherActionCreator {
  static Action onAction() {
    return const Action(OtherAction.action);
  }
}

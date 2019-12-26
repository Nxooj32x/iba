import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum MeAction { action }

class MeActionCreator {
  static Action onAction() {
    return const Action(MeAction.action);
  }
}

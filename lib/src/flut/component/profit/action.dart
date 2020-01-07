import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ProfitAction { action }

class ProfitActionCreator {
  static Action onAction() {
    return const Action(ProfitAction.action);
  }
}

import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum RankingAction { action }

class RankingActionCreator {
  static Action onAction() {
    return const Action(RankingAction.action);
  }
}

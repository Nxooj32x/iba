import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GridAction { action, loadData,onList ,changeName}

class GridActionCreator {
  static Action onAction() {
    return const Action(GridAction.action);
  }

  static Action onLoadData() {
    return const Action(GridAction.loadData);
  }

  static Action onOpenList() {
    return const Action(GridAction.onList);
  }
  static Action onChangeName() {
    return const Action(GridAction.changeName);
  }
}

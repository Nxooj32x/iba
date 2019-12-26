import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum EntranceAction { action,openGrid,pageChanged,barTap}

class EntranceActionCreator {
  static Action onAction() {
    return const Action(EntranceAction.action);
  }

  static Action onOpenGrid(String type) {
    return Action(EntranceAction.openGrid,payload: {'type':type});
  }

  static Action onPageChanged(int index) {
    return Action(EntranceAction.pageChanged,payload: {'index':index});
  }

  static Action onTap(int index) {
    return Action(EntranceAction.barTap,payload: {'index':index});
  }
}

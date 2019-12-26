import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PageListAction { action }

class PageListActionCreator {
  static Action onAction() {
    return const Action(PageListAction.action);
  }
}

import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SoftWareAction { action , initData}

class SoftWareActionCreator {
  static Action onAction() {
    return const Action(SoftWareAction.action);
  }

  static Action onInitData(String url) {
    return  Action(SoftWareAction.initData,payload: url);
  }
}

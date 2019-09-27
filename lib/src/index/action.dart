import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum IndexAction { action, update }

class IndexActionCreator {
  static Action onAction() {
    return const Action(IndexAction.action);
  }

  //刷新action，在按钮事件中调用，参数传入要刷新的数据
  static Action update(String title, String content) {
    println('action:update');
    return Action(
      IndexAction.update,   //action类型
      payload: <String, String>{'title': title, 'content': content},  //附带数据
    );
  }
}

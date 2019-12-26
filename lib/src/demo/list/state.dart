import 'package:fish_redux/fish_redux.dart';

class DemoListState implements Cloneable<DemoListState> {
  String TITLE = '标题标题标题标题标题标题标题';
  String SUB_TITLE = '二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二';
  @override
  DemoListState clone() {
    return DemoListState()..TITLE ..SUB_TITLE;
  }
}

DemoListState initState(Map<String, dynamic> args) {
  return DemoListState();
}

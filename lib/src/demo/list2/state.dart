import 'package:fish_redux/fish_redux.dart';

class DemoList2State implements Cloneable<DemoList2State> {
  String TITLE = '标题标题标题标题标题标题标题';
  String SUB_TITLE = '二级标题二级标题二级标题二级标题二级标题二级标题二级标题二级标题二';
  @override
  DemoList2State clone() {
    return DemoList2State()..TITLE..SUB_TITLE;
  }
}

DemoList2State initState(Map<String, dynamic> args) {
  return DemoList2State();
}

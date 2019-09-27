import 'package:fish_redux/fish_redux.dart';

class IndexState implements Cloneable<IndexState> {
  String title;
  String content;

  IndexState({this.title, this.content});

  @override
  IndexState clone() {
    return IndexState()..title = title
    ..content = content;
  }
}

IndexState initState(Map<String, dynamic> args) {
  return IndexState(title: 'title', content: 'content');
}

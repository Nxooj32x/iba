import 'package:fish_redux/fish_redux.dart';

class TopState implements Cloneable<TopState> {

  @override
  TopState clone() {
    return TopState();
  }
}

TopState initState(Map<String, dynamic> args) {
  return TopState();
}

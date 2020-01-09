import 'package:fish_redux/fish_redux.dart';

class FindDataState implements Cloneable<FindDataState> {

  @override
  FindDataState clone() {
    return FindDataState();
  }
}

FindDataState initState(Map<String, dynamic> args) {
  return FindDataState();
}

import 'package:fish_redux/fish_redux.dart';

class MeState implements Cloneable<MeState> {

  @override
  MeState clone() {
    return MeState();
  }
}

MeState initState(Map<String, dynamic> args) {
  return MeState();
}

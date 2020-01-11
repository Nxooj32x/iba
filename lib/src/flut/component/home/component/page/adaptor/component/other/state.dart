import 'package:fish_redux/fish_redux.dart';

class OtherState implements Cloneable<OtherState> {
  String type ;
  OtherState({this.type});
  @override
  OtherState clone() {
    return OtherState()..type = type;
  }
}

OtherState initState(Map<String, dynamic> args) {
  return OtherState();
}

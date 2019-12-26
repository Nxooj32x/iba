import 'package:fish_redux/fish_redux.dart';

class FriendState implements Cloneable<FriendState> {

  @override
  FriendState clone() {
    return FriendState();
  }
}

FriendState initState(Map<String, dynamic> args) {
  return FriendState();
}

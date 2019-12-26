import 'package:fish_redux/fish_redux.dart';

class RankingState implements Cloneable<RankingState> {

  @override
  RankingState clone() {
    return RankingState();
  }
}

RankingState initState(Map<String, dynamic> args) {
  return RankingState();
}

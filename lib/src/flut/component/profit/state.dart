import 'package:fish_redux/fish_redux.dart';

class ProfitState implements Cloneable<ProfitState> {

  @override
  ProfitState clone() {
    return ProfitState();
  }
}

ProfitState initState(Map<String, dynamic> args) {
  return ProfitState();
}

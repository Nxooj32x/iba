import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {

  String type ;

  ItemState({this.type});
  @override
  ItemState clone() {
    return ItemState()..type = type;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}

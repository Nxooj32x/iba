import 'package:fish_redux/fish_redux.dart';

class ImgListState implements Cloneable<ImgListState> {

  @override
  ImgListState clone() {
    return ImgListState();
  }
}

ImgListState initState(Map<String, dynamic> args) {
  return ImgListState();
}

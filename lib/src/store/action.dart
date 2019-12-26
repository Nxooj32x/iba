import 'package:fish_redux/fish_redux.dart';

enum GlobalAction { changeThemeColor, changeName }

class GlobalActionCreator {
  static Action onchangeThemeColor() {
    return const Action(GlobalAction.changeThemeColor);
  }

  static Action onchangeName(String name) {
    return  Action(GlobalAction.changeName,payload: name);
  }
}

import 'package:fish_redux/fish_redux.dart';

enum GlobalAction { change }

class GlobalActionCreator {
  static Action onchange() {
    return const Action(GlobalAction.change);
  }
}

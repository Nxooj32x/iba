import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum ScanAction { action }

class ScanActionCreator {
  static Action onAction() {
    return const Action(ScanAction.action);
  }
}

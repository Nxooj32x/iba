import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum WebAction { action, launchUrl,arrowBack,closeWeb }

class WebActionCreator {
  static Action onAction() {
    return const Action(WebAction.action);
  }

  static Action onLaunchUrl() {
    return Action(WebAction.launchUrl);
  }
  static Action onArrowBack() {
    return Action(WebAction.arrowBack);
  }

  static Action onCloseWeb() {
    return Action(WebAction.closeWeb);
  }
}

import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'pageview/friend_component/component.dart';
import 'pageview/home_component/component.dart';
import 'pageview/function_component/component.dart';
import 'pageview/me_component/component.dart';
import 'pageview/ranking_component/component.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class EntrancePage extends Page<EntranceState, Map<String, dynamic>> with KeepAliveMixin {
  EntrancePage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<EntranceState>(
              adapter: null,
              slots: <String, Dependent<EntranceState>>{
                'home': homeConnector() + HomeComponent(),
                'function': functionConnector() + FunctionComponent(),
                'ranking': rankingConnector() + RankingComponent(),
                'friend': friendConnector() + FriendComponent(),
              }),
          middleware: <Middleware<EntranceState>>[],
        );
}

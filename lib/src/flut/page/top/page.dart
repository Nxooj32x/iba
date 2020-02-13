import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TopPage extends Page<TopState, Map<String, dynamic>> {
  TopPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TopState>(
                adapter: null,
                slots: <String, Dependent<TopState>>{
                }),
            middleware: <Middleware<TopState>>[
            ],);

}

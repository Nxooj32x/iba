import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/page/adaptor/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TabViewPage extends Page<TabViewState, Map<String, dynamic>> with KeepAliveMixin {
  TabViewPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<TabViewState>(
                adapter: ItemConnector() +ItemAdapter(),
                slots: <String, Dependent<TabViewState>>{
                }),
            middleware: <Middleware<TabViewState>>[
            ],);

}

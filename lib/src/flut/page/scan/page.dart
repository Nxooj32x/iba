import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ScanPage extends Page<ScanState, Map<String, dynamic>> {
  ScanPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ScanState>(
                adapter: null,
                slots: <String, Dependent<ScanState>>{
                }),
            middleware: <Middleware<ScanState>>[
            ],);

}

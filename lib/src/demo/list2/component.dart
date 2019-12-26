import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DemoList2Component extends Component<DemoList2State> {
  DemoList2Component()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<DemoList2State>(
                adapter: null,
                slots: <String, Dependent<DemoList2State>>{
                }),);

}

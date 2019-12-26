import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DemoListComponent extends Component<DemoListState> {
  DemoListComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<DemoListState>(
                adapter: null,
                slots: <String, Dependent<DemoListState>>{
                }),);

}

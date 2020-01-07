import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MyComponent extends Component<MyState> {
  MyComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MyState>(
                adapter: null,
                slots: <String, Dependent<MyState>>{
                }),);

}

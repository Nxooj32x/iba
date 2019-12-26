import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FunctionComponent extends Component<FunctionState> {
  FunctionComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FunctionState>(
                adapter: null,
                slots: <String, Dependent<FunctionState>>{
                }),);

}

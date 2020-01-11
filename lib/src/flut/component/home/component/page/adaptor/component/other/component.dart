import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class OtherComponent extends Component<OtherState> {
  OtherComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<OtherState>(
                adapter: null,
                slots: <String, Dependent<OtherState>>{
                }),);

}

import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class MeComponent extends Component<MeState> {
  MeComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<MeState>(
                adapter: null,
                slots: <String, Dependent<MeState>>{
                }),);

}

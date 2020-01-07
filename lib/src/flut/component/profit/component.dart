import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ProfitComponent extends Component<ProfitState> {
  ProfitComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ProfitState>(
                adapter: null,
                slots: <String, Dependent<ProfitState>>{
                }),);

}

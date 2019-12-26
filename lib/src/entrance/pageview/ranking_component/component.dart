import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class RankingComponent extends Component<RankingState> {
  RankingComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<RankingState>(
                adapter: null,
                slots: <String, Dependent<RankingState>>{
                }),);

}

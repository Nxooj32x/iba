import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FriendComponent extends Component<FriendState> {
  FriendComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FriendState>(
                adapter: null,
                slots: <String, Dependent<FriendState>>{
                }),);

}

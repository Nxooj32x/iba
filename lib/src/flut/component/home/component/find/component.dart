import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/find/adaptor/adapter.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FindComponent extends Component<FindState>   with KeepAliveMixin{
  FindComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FindState>(
                adapter: FindDataConnector() + FindDataAdapter(),
                slots: <String, Dependent<FindState>>{
                }),);

}

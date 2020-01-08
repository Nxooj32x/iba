import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SoftWareComponent extends Component<SoftWareState>  with KeepAliveMixin{
  SoftWareComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SoftWareState>(
                adapter: null,
                slots: <String, Dependent<SoftWareState>>{
                }),);

}

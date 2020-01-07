import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ClassifyComponent extends Component<ClassifyState> {
  ClassifyComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ClassifyState>(
                adapter: null,
                slots: <String, Dependent<ClassifyState>>{
                }),);

}

import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/common/state.dart';
import 'package:iba/src/flut/component/home/component/common/reducer.dart';
import 'package:iba/src/flut/component/home/component/common/effect.dart';
import 'view.dart';

class OtherComponent extends Component<PageState> with KeepAliveMixin {
  OtherComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PageState>(
                adapter: null,
                slots: <String, Dependent<PageState>>{
                }),);

}

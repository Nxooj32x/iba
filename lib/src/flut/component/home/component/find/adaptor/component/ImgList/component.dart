import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class ImgListComponent extends Component<ImgListState> {
  ImgListComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<ImgListState>(
                adapter: null,
                slots: <String, Dependent<ImgListState>>{
                }),);

}

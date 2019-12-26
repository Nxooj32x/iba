import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/search/component.dart';
import 'adapter/adapter.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeComponent extends Component<HomeState> with KeepAliveMixin{
  HomeComponent()
      : super(
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeState>(
                adapter: PageListConnector() + PageListAdapter(),
                slots: <String, Dependent<HomeState>>{
                  'appBarTitle': SearchConnector() + SearchComponent()
                }),);

}

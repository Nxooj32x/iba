import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CategoryPage extends Page<CategoryState, Map<String, dynamic>>  with KeepAliveMixin, SingleTickerProviderMixin {
  CategoryPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<CategoryState>(
                adapter: null,
                slots: <String, Dependent<CategoryState>>{
                }),
            middleware: <Middleware<CategoryState>>[
            ],);

}

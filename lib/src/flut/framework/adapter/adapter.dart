import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/classify/component.dart';
import 'package:iba/src/flut/component/classify/state.dart';
import 'package:iba/src/flut/component/community/component.dart';
import 'package:iba/src/flut/component/community/state.dart';
import 'package:iba/src/flut/component/home/component.dart';
import 'package:iba/src/flut/component/home/state.dart';
import 'package:iba/src/flut/component/my/component.dart';
import 'package:iba/src/flut/component/my/state.dart';
import 'package:iba/src/flut/component/profit/component.dart';
import 'package:iba/src/flut/component/profit/state.dart';

import 'reducer.dart';
import 'state.dart';

class BootAdapter extends DynamicFlowAdapter<BootAdapterState> {
  BootAdapter()
      : super(
          pool: <String, Component<Object>>{
            'home': HomeComponent(),
            'classify':ClassifyComponent(),
            'community': CommunityComponent(),
            'profit': ProfitComponent(),
            'my': MyComponent()
          },
          connector: _BootConnector(),
          reducer: buildReducer(),
        );
}

class _BootConnector extends ConnOp<BootAdapterState, List<ItemBean>> {
  @override
  List<ItemBean> get(BootAdapterState state) {

    return <ItemBean>[ItemBean('home',state.homeState),ItemBean('classify',ClassifyState()),ItemBean('community',CommunityState()),ItemBean('profit',ProfitState()),ItemBean('my',MyState())];
  }

  @override
  void set(BootAdapterState state, List<ItemBean> items) {
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}

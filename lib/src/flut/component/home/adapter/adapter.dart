import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/page/state.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';

import 'reducer.dart';
import 'state.dart';
import '../component/page/component.dart';

class PageListAdapter extends DynamicFlowAdapter<PageListState> {
  PageListAdapter()
      : super(
          pool: <String, Component<Object>>{
            'view': PageComponent()
          },
          connector: _PageListConnector(),
          reducer: buildReducer(),
        );
}

class _PageListConnector extends ConnOp<PageListState, List<ItemBean>> {
  @override
  List<ItemBean> get(PageListState state) {
    if (state.homeModel.list?.isNotEmpty == true) {
      return state.homeModel.list
          .map<ItemBean>((HomeTabModel data) => ItemBean('view', PageState(homeTabModel: data)))
          .toList(growable: true);
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(PageListState state, List<ItemBean> items) {
    if (items?.isNotEmpty == true) {
      state.homeModel.list = List<HomeTabModel>.from(items.map<HomeTabModel>((ItemBean bean){
      PageState pageState =  bean.data as PageState;
      return pageState.homeTabModel;
    }).toList());
    } else {
       state.homeModel.list = <HomeTabModel>[];
    }
  }

  @override
  subReducer(reducer) {
    return super.subReducer(reducer);
  }
}

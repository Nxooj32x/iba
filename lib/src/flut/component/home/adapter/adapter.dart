import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/0001/component.dart';
import 'package:iba/src/flut/component/home/component/other/component.dart';
import 'package:iba/src/flut/component/home/component/common/state.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';

import 'reducer.dart';
import 'state.dart';

class PageListAdapter extends DynamicFlowAdapter<PageListState> {
  PageListAdapter()
      : super(
          pool: <String, Component<Object>>{
            '0001': Cpt001Component(),
            '0010': OtherComponent(),
            '0011': OtherComponent(),
            '0100': OtherComponent(),
            '0101': OtherComponent(),
            '0111': OtherComponent(),
            '1000': OtherComponent(),
            '1001': OtherComponent(),
            '1011': OtherComponent(),
            '1100': OtherComponent(),
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
          .map<ItemBean>((HomeTabModel data) => ItemBean(data.type, PageState(homeTabModel: data)))
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

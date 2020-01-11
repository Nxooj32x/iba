import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/page/adaptor/component/ImgList/component.dart';
import 'package:iba/src/flut/component/home/component/page/adaptor/component/ImgList/state.dart';
import 'package:iba/src/flut/component/home/component/page/adaptor/component/other/component.dart';
import 'package:iba/src/flut/component/home/component/page/adaptor/component/other/state.dart';

import 'reducer.dart';
import 'state.dart';

class ItemAdapter extends DynamicFlowAdapter<ItemState> {
  ItemAdapter()
      : super(
          pool: <String, Component<Object>>{
            "imgList" : ImgListComponent(),
            "other" : OtherComponent(),
          },
          connector: _ItemConnector(),
          reducer: buildReducer(),
        );
}

class _ItemConnector extends ConnOp<ItemState, List<ItemBean>> {
  @override
  List<ItemBean> get(ItemState state) {
    if (state.type == "0001") {
      return <ItemBean>[ItemBean("imgList",ImgListState())];
    } else {
      return <ItemBean>[ItemBean("other",OtherState(type: state.type))];
    }
  }

  @override
  void set(ItemState state, List<ItemBean> items) {
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}

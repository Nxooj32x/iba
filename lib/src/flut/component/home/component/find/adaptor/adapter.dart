import 'package:fish_redux/fish_redux.dart';
import 'package:iba/src/flut/component/home/component/find/adaptor/component/ImgList/component.dart';
import 'package:iba/src/flut/component/home/component/find/adaptor/component/ImgList/state.dart';

import 'reducer.dart';
import 'state.dart';

class FindDataAdapter extends DynamicFlowAdapter<FindDataState> {
  FindDataAdapter()
      : super(
          pool: <String, Component<Object>>{
            "imgList" : ImgListComponent()
          },
          connector: _FindDataConnector(),
          reducer: buildReducer(),
        );
}

class _FindDataConnector extends ConnOp<FindDataState, List<ItemBean>> {
  @override
  List<ItemBean> get(FindDataState state) {
    return <ItemBean>[ItemBean("imgList",ImgListState())];
  }

  @override
  void set(FindDataState state, List<ItemBean> items) {
  }

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}

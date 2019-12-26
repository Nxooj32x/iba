import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'effect.dart';
import 'list/component.dart';
import 'list2/component.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class DemoPage extends Page<DemoState, Map<String, dynamic>> with KeepAliveMixin, SingleTickerProviderMixin{
  DemoPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
//            wrapper: keepAliveWrapper,
            dependencies: Dependencies<DemoState>(
                adapter: null,
                slots: <String, Dependent<DemoState>>{
                  'demoList1': demoConnector() + DemoListComponent(),
                  'demoList2': demo2Connector() + DemoList2Component(),
                }),
            middleware: <Middleware<DemoState>>[
            ],);

}

class KeepAliveWidget extends StatefulWidget {
  final Widget child;

  const KeepAliveWidget(this.child);

  @override
  State<StatefulWidget> createState() => KeepAliveState();
}

class KeepAliveState extends State<KeepAliveWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

Widget keepAliveWrapper(Widget child) {
  return KeepAliveWidget(child);
}
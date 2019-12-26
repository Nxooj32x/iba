import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/home/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class BootPage extends Page<BootState, Map<String, dynamic>> with KeepAliveMixin, SingleTickerProviderMixin {
  BootPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            wrapper:willPopWrapper,
            dependencies: Dependencies<BootState>(
                adapter: null,
                slots: <String, Dependent<BootState>>{
                'homeComponent':HomeConnector() + HomeComponent()
                }),
            middleware: <Middleware<BootState>>[
            ],);
}

Widget willPopWrapper(Widget child) {
  return WillPopWidget(child);
}

class WillPopWidget extends StatelessWidget {
  final Widget child;
  const WillPopWidget(this.child);
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
        onWillPop: () {
      return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title: new Text('提示'),
          content: new Text('确定要退出应用？'),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text('取消'),
            ),
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: new Text('确定'),
            ),
          ],
        ),
      ) ??
          false;
    },
    child:SafeArea(child: child));
  }
}

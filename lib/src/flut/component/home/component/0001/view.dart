import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/home/component/common/state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';


Widget buildView(PageState state, Dispatch dispatch, ViewService viewService) {
  //  return Container(child: Center(child: Text(state.homeTabModel.tabName),),);
  List<String> items = ["1", "2", "3", "4", "5", "6", "7", "8"];
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);
  void _onRefresh() async{
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.refreshCompleted();
  }

  void _onLoading() async{
    await Future.delayed(Duration(milliseconds: 1000));
    _refreshController.loadComplete();
  }
  return SmartRefresher(
    enablePullDown: true,
    enablePullUp: true,
    header: WaterDropHeader(complete: Text("刷新完成",style: TextStyle(color: Colors.grey)),),
    footer: CustomFooter(
      builder: (BuildContext context, LoadStatus mode) {
        Widget body;
        if (mode == LoadStatus.idle) {
          body = Text("上滑加载更多",style: TextStyle(color: Colors.grey),);
        } else if (mode == LoadStatus.loading) {
          body = CupertinoActivityIndicator();
        } else if (mode == LoadStatus.failed) {
          body = Text("系统繁忙，稍后再试",style: TextStyle(color: Colors.grey),);
        } else if (mode == LoadStatus.canLoading) {
          body = Text("release to load more",style: TextStyle(color: Colors.grey),);
        } else {
          body = Text("（T-T）我是有底线的",style: TextStyle(color: Colors.grey),);
        }
        return Container(
          height: 55.0,
          child: Center(child: body),
        );
      },
    ),
    controller: _refreshController,
    onRefresh: _onRefresh,
    onLoading: _onLoading,
    child: ListView.builder(
      itemBuilder: (c, i) => Card(child: Center(child: Text(items[i]))),
      itemExtent: 100.0,
      itemCount: items.length,
    ),
  );
}

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:vibrate/vibrate.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TopState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            // 展开的高度
            expandedHeight: MediaQuery.of(viewService.context).size.height,
            // 强制显示阴影
            forceElevated: true,
            // 设置该属性，当有下滑手势的时候，就会显示 AppBar
//        floating: true,
            // 该属性只有在 floating 为 true 的情况下使用，不然会报错
            // 当上滑到一定的比例，会自动把 AppBar 收缩（不知道是不是 bug，当 AppBar 下面的部件没有被 AppBar 覆盖的时候，不会自动收缩）
            // 当下滑到一定比例，会自动把 AppBar 展开
//        snap: true,
            // 设置该属性使 Appbar 折叠后不消失
//        pinned: true,
            // 通过这个属性设置 AppBar 的背景
            flexibleSpace: FlexibleSpaceBar(
//          title: Text('Expanded Title'),
              // 背景折叠动画
              collapseMode: CollapseMode.parallax,
              background: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581510515524&di=d2cbcaca3da01f4d2baeb9eea3323753&imgtype=0&src=http%3A%2F%2Ft9.baidu.com%2Fit%2Fu%3D583874135%2C70653437%26fm%3D79%26app%3D86%26f%3DJPEG%3Fw%3D3607%26h%3D2408', fit: BoxFit.cover),
            ),
          ),

          // 这个部件一般用于最后填充用的，会占有一个屏幕的高度，
          // 可以在 child 属性加入需要展示的部件
          SliverFillRemaining(
            child:  PageView(
              onPageChanged: (i){
                Vibrate.feedback(FeedbackType.success);
              },
              scrollDirection:Axis.vertical,
              children: <Widget>[
                Image.network('https://t9.baidu.com/it/u=4169540006,4220376401&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1582105749&t=9e79736094510046392b62893665636a', fit: BoxFit.cover),
                Image.network('https://t9.baidu.com/it/u=4169540006,4220376401&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1582105749&t=9e79736094510046392b62893665636a', fit: BoxFit.cover),
                Image.network('https://t9.baidu.com/it/u=4169540006,4220376401&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1582105749&t=9e79736094510046392b62893665636a', fit: BoxFit.cover),
                Image.network('https://t9.baidu.com/it/u=4169540006,4220376401&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1582105749&t=9e79736094510046392b62893665636a', fit: BoxFit.cover),
              ],
            ),
          ),
        ])),
  );
}

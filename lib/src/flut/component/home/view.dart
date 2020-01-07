import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/model/home/home_tab_model.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Color(0xffFFFFFF),
    appBar: AppBar(
      key: state.appBarKey,
      // 背景色（`backgroundColor`）属性，用于应用栏材质的颜色。
      backgroundColor: const Color(0xffFF447C),
      // 图标主题（`iconTheme`）属性，用于应用栏图标的颜色，不透明度和大小。
      iconTheme: IconThemeData(),
      // 亮度（`brightness`）属性，应用栏材质的亮度。
      brightness: Brightness.light,
      // 海拔（`elevation`）属性，将此应用栏相对于其父级放置的z坐标。
      elevation: 0.0,
      // 标题间距（`titleSpacing`��属性，横轴上标题内容周围的间距，即使没有前导内容或操作���也会应用此间距。
      // 如果希望标题（`title`）属性占用所有可用空间，���将此值设置为0.0。
      titleSpacing: 0.0,
      // 应用栏（`AppBar`）中显示的主要组件。
      title: viewService.buildComponent('searchComponent'),
      bottom: PreferredSize(
          child: DecoratedBox(
            // 装饰（`decoration`）属性，具体怎么画装饰。
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/app_bar_plate_2.png'),
                  fit: BoxFit.fill,
                ),
                //     使用代码绘制渐变效果的代码，因为无法实现效果图不使用。
                // 线性梯度（`gradient`）组件，2D线性渐变。
                gradient: LinearGradient(
                  // 开始（`begin`）属性，放置渐变的0.0的偏移量。
                  begin: Alignment.topRight,
                  // 颜色（`colors`）属性，梯度应在每个停靠点处获得的颜色。
                  colors: <Color>[
                    const Color(0xffFF3F70),
                    const Color(0xffFF355B),
                  ],
                )),
            child: Row(
              children: <Widget>[
                // 扩展（`Expanded`）组件，用于展开行（`Row`）、列（`Column`）或柔性（`Flex`）的子项。
                Expanded(
                  // 标签栏（`TabBar`）组件，显示一排水平的标签。
                  child: TabBar(
                    // 标签颜色（`labelColor`）属性，所选标签标签的颜色。
                    labelColor: Color(0xffFFFFFF),
                    // 未选定标签颜色（`unselectedLabelColor`）属性，未选定标签的颜色。
                    unselectedLabelColor: Color(0xffFFFFFF),
                    // 控制器（`controller`）属性，此组件的选择和动画状态。
                    controller: state.tabController,
                    // 标签（`tabs`）属性，通常是两个或多个标签组件的列表。
                    tabs: state.homeModel.list
                        .map((HomeTabModel homeTabModel) => Container(
                              height: 34.0,
                              child: Center(
                                child: Text(
                                  homeTabModel.tabName,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.white70),
                                ),
                              ),
                            ))
                        .toList(),
                    // 是滚动（`isScrollable`）属性，此选项卡栏是否可以水平滚动。
                    isScrollable: true,
                    // 指示灯颜色（`indicatorColor`）属性，显示在所选选项卡下方的线条颜色。
                    indicatorColor: Color(0xffFFFFFF),
                    // 指标大小（`indicatorSize`）属性，定义如何计算选定选项卡指示符的大小。
                    indicatorSize: TabBarIndicatorSize.label,
                    // 标签样式（`labelStyle`）属性，所选标签的文本样式。
                    labelStyle: TextStyle(
                      fontFamily: 'PingFangMedium',
                      fontSize: 15.0,
                    ),
                    // 未选定标签样式（`labelStyle`）属性，未选中标签的文字样式。
                    unselectedLabelStyle: TextStyle(
                      fontFamily: 'PingFangRegular',
                      fontSize: 15.0,
                    ),
                    // 标签填充（`labelPadding`）属性，填充添加到每个选项卡标签。
                    labelPadding: EdgeInsets.only(
                      left: 13.0,
                      right: 7.0,
                    ),
                    // 指示填充（`indicatorPadding`）属性，显示在选项卡下方线条的水平填充。
                    indicatorPadding: EdgeInsets.only(
                      left: 3.0,
                      right: -3.0,
                    ),
                  ),
                ),
                // 手势探测器（`GestureDetector`）组件，检测手势的组件。
                GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Opacity(
                        opacity: 0.0,
                        child: Container(
                          width: 38.0,
                          height: 20.0,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Container(
                        width: 38.0,
                        height: 20.0,
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/app_bar_more.png',
                          height: 12,
                          width: 12,
                        ),
                      ),
                    ],
                  ),
                  // 在点击（`onTap`）熟悉，已经发生了点击时触发。
                  onTap: () async {},
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(30.0)),
    ),
    body: TabBarView(
      controller: state.tabController,
      children:state.homeModel.list.map((HomeTabModel homeTabModel) {
        return Center(
          child: new Text(homeTabModel.tabName),
        );
      }).toList())
  );
}

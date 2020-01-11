import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/search/action.dart';
import 'state.dart';

Widget buildView(
    CategoryState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: const Color(0xffFFFFFF),
    appBar: AppBar(
      backgroundColor: const Color(0xffFFFFFF),
      iconTheme: IconThemeData(),
      // 亮度（`brightness`）属性，应用栏材质的亮度。
      brightness: Brightness.light,
      // 海拔（`elevation`）属性，将此应用栏相对于其父级放置的z坐标。
      elevation: 0.0,
      // 标题间距（`titleSpacing`）属性，横轴上标题内容周围的间距，即使没有前导内容或操作，也会应用此间距。
      // 如果希望标题（`title`）属性占用所有可用空间，请将此值设置为0.0。
      // 设置应用栏是否需要显示前置组件，就是系统默认的返回按钮。
      automaticallyImplyLeading: false,
      // 应用栏（`AppBar`）中显示的主要组件。
      title: Row(
        children: <Widget>[
          InkWell(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
              size: 16,
            ),
            onTap: () {
              Navigator.of(viewService.context).pop();
            },
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "全部分类",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
          )),
          Text(
            "编辑",
            style: TextStyle(fontSize: 14, color: Colors.black45),
          )
        ],
      ),
    ),
    body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          // 类似AppBar，但是可以设置滚动效果
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFFFFFF),
          titleSpacing: 0.0,
          elevation: 0.0,
          brightness: Brightness.light,
          floating: true,
          // 下拉显示效果
          expandedHeight: 120.0,
          // 设置顶部向下伸展的高度
          flexibleSpace: FlexibleSpaceBar(
            // 向下伸展的部分
            background: Container(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16,top: 2),
                      child: Container(
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(24.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.search,
                              size: 16.0,
                              color: Color(0xff999999),
                            ),
                            Text(
                              '搜索',
                              style: TextStyle(
                                color: Color(0xff999999),
                                fontFamily: 'PingFangRegular',
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          ' 已添加',
                          style: TextStyle(
                            // 字体大小。
                            fontSize: 15.0,
                            // 字体系列。
                            fontFamily: 'PingFangMedium',
                            // 颜色。
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverPersistentHeader(    // 可以吸顶的TabBar
          pinned: true,
          delegate: StickyTabBarDelegate(
            child: TabBar(
              // 标签颜色（`labelColor`）属性，所选标签标签的颜色。
              labelColor: Colors.orange,
              // 未选定标签颜色（`unselectedLabelColor`）属性，未选定标签的颜色。
              unselectedLabelColor: Colors.black,
              // 控制器（`controller`）属性，此组件的选择和动画状态。
              controller: state.tabController,
              tabs: <Widget>[
                Tab(text: 'Home'),
                Tab(text: 'Profile'),
              ],
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
                )
            ),
          ),
        ),
        SliverFillRemaining(        // 剩余补充内容TabBarView
          child: TabBarView(
            controller: state.tabController,
            children: <Widget>[
              Center(child: Text('Content of Home')),
              Center(child: Text('Content of Profile')),
            ],
          ),
        )
      ],
    ),
  );
}

class StickyTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar child;

  StickyTabBarDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return this.child;
  }

  @override
  double get maxExtent => this.child.preferredSize.height;

  @override
  double get minExtent => this.child.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
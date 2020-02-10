import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(SearchState state, Dispatch dispatch, ViewService viewService) {
  /// 热门搜索项目的字符串（`String`）列表。
  List<String> popular = [
    '口碑pos',
    'MeiTuan',
    '哗啦啦',
    '小雅收银',
    '微盟小程序',
    '股市涨幅',
    '二维火',
  ];
  List<String> history = [
    '测试',
    'AAAAAA',
    'test',
    '娃哈哈',
  ];
  return Scaffold(
    backgroundColor: const Color(0xffFFFFFF),
    appBar: AppBar(
      // 背景色（`backgroundColor`）属性，用于应用栏材质的颜色。
      backgroundColor: const Color(0xffFFFFFF),
      // 图标主题（`iconTheme`）属性，用于应用栏图标的颜色，不透明度和大小。
      iconTheme: IconThemeData(),
      // 亮度（`brightness`）属性，应用栏材质的亮度。
      brightness: Brightness.light,
      // 海拔（`elevation`）属性，将此应用栏相对于其父级放置的z坐标。
      elevation: 1.0,
      // 标题间距（`titleSpacing`）属性，横轴上标题内容周围的间距，即使没有前导内容或操作，也会应用此间距。
      // 如果希望标题（`title`）属性占用所有可用空间，请将此值设置为0.0。
      titleSpacing: 0.0,
      // 设置应用栏是否需要显示前置组件，就是系统默认的返回按钮。
      automaticallyImplyLeading: false,
      // 应用栏（`AppBar`）中显示的主要组件。
      title: DecoratedBox(
        // 装饰（`decoration`）属性，具体怎么画装饰。
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Row(
          // 主轴对齐（`mainAxisAlignment`）属性，如何将子组件放在主轴上。
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // 扩展（`Expanded`）组件，用于展开行（`Row`）、列（`Column`）或柔性（`Flex`）的子项。
            Expanded(
              child: Container(
                // 填充（`padding`）属性，在装饰里面的空白空间，如果有的话，将子组件放在这个衬垫内。
                margin: EdgeInsets.only(left: 14.0),
                height: 28.0,
                decoration: BoxDecoration(
                  color: Color(0xffE8E8E8),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(24.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(
                        Icons.search,
                        size: 16.0,
                        color: Color(0xff999999),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        // 最大线（`maxLines`）属性，文本要跨越的可选最大行数，必要时包装。
                        // 如果文本超过给定的行数，则会根据溢出（`overflow`）将其截断。
                        maxLines: 1,
                        // 光标颜色属性，绘制光标时使用的颜色。
                        cursorColor: const Color(0xFFFE7C30),
                        // 光标宽度属性，光标的厚度，默认是2.0。
                        cursorWidth: 2.0,
                        // 键盘类型属性，用于编辑文本的键盘类型。
                        keyboardType: TextInputType.text,
                        // 样式属性，用于正在编辑的文本的样式。
                        style: TextStyle(
                          // 字体大小。
                          fontSize: 15.0,
                          // 字体系列。
                          fontFamily: 'PingFangRegular',
                          // 颜色。
                          color: const Color(0xff333333),
                        ),
                        // 装饰（`decoration`）属性，在文本字段周围显示的装饰。
                        // 输入装饰（`InputDecoration`）组件。
                        decoration: InputDecoration(
                          // 边框属性，装饰的容器周围绘制的形状。
                          border: InputBorder.none,
                          // 提示文本属性，提示字段接受哪种输入的文本。
                          hintText: '大家都在搜--微盟与雅座合作',
                          // 是密集属性，输入子项是否是密集形式的一部分（即使用较少的垂直空间）。
                          isDense: true,
                          // 提示样式属性，用于提示文本（`hintText`）的样式。
                          hintStyle: TextStyle(
                            // 字体大小。
                            fontSize: 12.0,
                            // 字体系列。
                            fontFamily: 'PingFangRegular',
                            // 颜色。
                            color: const Color(0xFF666666),
                          ),
                        ),
                        onSubmitted: (String onSubmitted) {
                          if (onSubmitted.trim() != '') {
                              Fluttertoast.showToast(msg: onSubmitted,gravity: ToastGravity.CENTER);
                          }
                        },
                        textInputAction: TextInputAction.search,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.only(
                  right: 14.0,
                  left: 12.0,
                ),
                color: Color(0xffFFFFFF),
                child: Text(
                  '取消',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'PingFangMedium',
                    color: Color(0xFF666666),
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(viewService.context).pop();
              },
            ),
          ],
        ),
      ),
    ),
    body: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.whatshot,
                size: 19.0,
                color: const Color(0xFF666666),
              ),
              Text(
                ' 大家都在搜',
                style: TextStyle(
                  // 字体大小。
                  fontSize: 12.0,
                  // 字体系列。
                  fontFamily: 'PingFangMedium',
                  // 颜色。
                  color: const Color(0xFF666666),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14,right: 14),
          child: Wrap(
            spacing: 6,
            runSpacing: 6,
            alignment: WrapAlignment.start,
            children: popular.map((String str){
              return  ChoiceChip(
                label: Text(
                  str,
                  style: TextStyle(fontSize: 12, fontFamily: 'PingFangRegular'),
                ),
                selected: false,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                selectedColor: Colors.grey,
                backgroundColor:  Color(0xffE8E8E8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onSelected: (selected) {

                },
              );
            }).toList(),
          ),
        ),
        SizedBox(height: 2.0),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.restore,
                    size: 19.0,
                    color: const Color(0xFF666666),
                  ),
                  Text(
                    ' 搜索历史',
                    style: TextStyle(
                      // 字体大小。
                      fontSize: 12.0,
                      // 字体系列。
                      fontFamily: 'PingFangMedium',
                      // 颜色。
                      color: const Color(0xFF666666),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 21.0,
                      width: 39.0,
                      color: Color(0xffFFFFFF),
                    ),
                    Text(
                      '清除',
                      style: TextStyle(
                        // 字体大小。
                        fontSize: 12.0,
                        // 字体系列。
                        fontFamily: 'PingFangRegular',
                        // 颜色。
                        color: const Color(0xFF666666),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 14,right: 14),
          child: Wrap(
            spacing: 6,
            runSpacing: 6,
            alignment: WrapAlignment.start,
            children: history.map((String str){
              return  ChoiceChip(
                label: Text(
                  str,
                  style: TextStyle(fontSize: 12, fontFamily: 'PingFangRegular'),
                ),
                selected: false,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                selectedColor: Colors.grey,
                backgroundColor:  Color(0xffE8E8E8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                onSelected: (selected) {

                },
              );
            }).toList(),
          ),
        )
      ],
    ),
  );
}

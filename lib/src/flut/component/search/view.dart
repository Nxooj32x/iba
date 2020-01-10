import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iba/src/flut/component/search/action.dart';
import 'package:iba/src/flut/page/mine/page.dart';
import 'package:permission_handler/permission_handler.dart';
import 'state.dart';

Widget buildView(SearchState state, Dispatch dispatch, ViewService viewService) {
  return Row(
    // 主轴对齐（`mainAxisAlignment`）属性，如何将子组件放在主轴上。
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      GestureDetector(
        onTap: (){
          dispatch(SearchActionCreator.onMine());
        },
        child: Container(
          // 填充（`padding`）属性，在装饰里面的空白空间，如果有的话，将子组件放在这个衬垫内。
          padding: EdgeInsets.only(
            left: 14.0,
            right: 8
          ),
          child: Icon(Icons.person_outline,color: Colors.white,size: 28,),
        ),
      ),
      // 扩展（`Expanded`）组件，用于展开行（`Row`）、列（`Column`）或柔性（`Flex`）的子项。
      Expanded(
        child: GestureDetector(
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
          onTap: () {
          },
        ),
      ),
      // 手势探测器（`GestureDetector`）组件，检测手势的组件。
      Row(
        children: <Widget>[
          GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  // 填充（`padding`）属性，在装饰里面的空白空间，如果有的话，将子组件放在这个衬垫内。
                  padding: EdgeInsets.only(
                    left: 14.0,
                  ),
                  child: Image.asset(
                    'assets/app_bar_scan.png',
                    height: 23,
                    width: 23,
                  ),
                ),
              ],
            ),
            // 在点击（`onTap`）熟悉，已经发生了点击时触发。
            onTap: () async{
              Map<PermissionGroup, PermissionStatus> permissions = await PermissionHandler().requestPermissions([PermissionGroup.camera]);
              if (permissions[PermissionGroup.camera] == PermissionStatus.granted) {
                dispatch(SearchActionCreator.onScan());
              }
            },
          ),
          GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    right: 14.0,
                    left: 12.0,
                  ),
                  child: Stack(
                    // 对准属性，如何将堆叠中未定位和部分定位的子项对齐。
                    alignment: Alignment.topRight,
                    children: <Widget>[
                      Image.asset(
                        'assets/app_bar_service.png',
                        height: 23,
                        width: 23,
                      ),
                      Image.asset(
                        'assets/app_bar_service_angle.png',
                        height: 8,
                        width: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            onTap: () {
              dispatch(SearchActionCreator.onCheckVersion());
            },
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    ],
  );
}

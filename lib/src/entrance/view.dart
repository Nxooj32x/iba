import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(
    EntranceState state, Dispatch dispatch, ViewService viewService) {
  return WillPopScope(
    onWillPop: () {
      return showDialog(
            context: viewService.context,
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
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(40.0)),
                height: 35.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            size: 18.0,
                          ),
                          onPressed: null,
                        ),
                        RotateAnimatedTextKit(
                            duration: new Duration(milliseconds: 10000),
                            onTap: () {
                              print("Tap Event");
                            },
                            text: state.searchMessage,
                            textStyle: TextStyle(fontSize: 12.0, fontFamily: "Horizon",color: Colors.grey),
                            textAlign: TextAlign.start,
                            alignment: AlignmentDirectional.bottomStart // or Alignment.topLeft
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_voice,
                        size: 18.0,
                      ),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 25.0,
              child: PopupMenuButton<String>(
                onSelected: (String value) {
                  dispatch(EntranceActionCreator.onOpenGrid(value));
                },
                itemBuilder: (BuildContext context) {
                  return [
                    new PopupMenuItem(
                        value: "grid",
                        child: Row(
                          children: <Widget>[
                            new Text("grild"),
                            Icon(Icons.grid_on)
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        )),
                    new PopupMenuItem(
                        value: "webview",
                        child: Row(
                          children: <Widget>[
                            new Text("webview"),
                            Icon(Icons.cloud)
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ))
                  ];
                },
              ),
            ),
          ],
        ),
        /*actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String value) {
              dispatch(EntranceActionCreator.onOpenGrid(value));
            },
            itemBuilder: (BuildContext context) {
              return [
                new PopupMenuItem(
                    value: "grid",
                    child: Row(
                      children: <Widget>[
                        new Text("grild"),
                        Icon(Icons.grid_on)
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    )),
                new PopupMenuItem(
                    value: "webview",
                    child: Row(
                      children: <Widget>[
                        new Text("webview"),
                        Icon(Icons.cloud)
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ))
              ];
            },
          ),
        ],*/
      ),
      body: PageView(
        controller: state.pageController,
        onPageChanged: (int index) {
          dispatch(EntranceActionCreator.onPageChanged(index));
        },
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          viewService.buildComponent('home'),
          viewService.buildComponent('function'),
          viewService.buildComponent('ranking'),
          viewService.buildComponent('friend')
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              size: 24.0,
            ),
            title: new Text(
              "首页",
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            activeIcon: new Icon(
              Icons.home,
              size: 28.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.extension,
              size: 24.0,
            ),
            title: new Text(
              "功能",
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            activeIcon: new Icon(
              Icons.extension,
              size: 28.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.assessment,
              size: 24.0,
            ),
            title: new Text(
              "榜单",
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            activeIcon: new Icon(
              Icons.assessment,
              size: 28.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.people,
              size: 24.0,
            ),
            title: new Text(
              "社交",
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            activeIcon: new Icon(
              Icons.people,
              size: 28.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.person,
              size: 24.0,
            ),
            title: new Text(
              "我的",
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            activeIcon: new Icon(
              Icons.person,
              size: 28.0,
            ),
          ),
        ],
        currentIndex: state.currentPageIndex,
        onTap: (int index) {
          //_pageController.jumpToPage(index); 没有动画的页面切换
          dispatch(EntranceActionCreator.onTap(index));
        },
      ),
    ),
  );
}

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(BootState state, Dispatch dispatch, ViewService viewService) {
  final ListAdapter adapter = viewService.buildAdapter();
  return Scaffold(
      body: PageView.builder(
        // 物理（`physics`）属性，页面视图应如何响应用户输入。
        // 从不可滚动滚动物理（`NeverScrollableScrollPhysics`）类，不允许用户滚动。
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: adapter.itemBuilder,
        itemCount: adapter.itemCount,
        // 控制器（`controller`）属性，用于控制滚动此页面视图位置的对象。
        controller: state.controller,),
      // 底部导航栏（`bottomNavigationBar`）属性，显示在脚手架（`Scaffold`）组件的底部。
      // 底部导航栏（`BottomNavigationBar`）组件，显示在应用程序底部的组件，
      // 用于在几个屏幕之间中进行选择，通常在三到五之间，再多就不好看了。
      bottomNavigationBar: BottomNavigationBar(
        items: state.navigationItem.map((NavigationItem navigationItem) {
          // 底部导航栏项目（`BottomNavigationBarItem`）组件，通常嵌入在底部导航组件中。
          return BottomNavigationBarItem(
            // 图标（`icon`）属性，项目的图标。
            icon: Image.asset(
              navigationItem.icon,
              height: 18,
            ),
            // 活动图标（`activeIcon`）属性，选择此底部导航项时显示的替代图标。
            activeIcon: Image.asset(
              navigationItem.activeIcon,
              height: 18,
            ),
            // 标题图标（`title`）属性，该项目的标题。
            title: Text(navigationItem.title,style: TextStyle(fontSize: 12.0),),
          );
        }).toList(),
        // 目前的索引（`currentIndex`）属性，当前活动项的项目索引。
        currentIndex: state.selectedIndex,
        // 固定颜色（`fixedColor`）属性，当BottomNavigationBarType.fixed时所选项目的颜色。
        fixedColor: Color(0xffFE7C30),
        onTap: (int index) {
          dispatch(BootActionCreator.onSwitchNavigationBar(index));
        },
        // 定义底部导航栏（`BottomNavigationBar`）组件的布局和行为。
        type: BottomNavigationBarType.fixed,
      ));
}

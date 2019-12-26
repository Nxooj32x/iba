import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

Widget buildView(WebState state, Dispatch dispatch, ViewService viewService) {
  return WebviewScaffold(
      appBar:  AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.grey,), onPressed: (){
          dispatch(WebActionCreator.onArrowBack());
        }),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
//        centerTitle: true,
//        title: TextField(
//          autofocus: false,
//          controller: state.controller,
//          textInputAction: TextInputAction.go,
//          onSubmitted: (url) =>dispatch(WebActionCreator.onLaunchUrl()),
//          style: TextStyle(color: Colors.white,),
//          decoration: InputDecoration(
//            border: InputBorder.none,
//            hintText: "Enter Url Here",
//            hintStyle: TextStyle(color: Colors.black38,backgroundColor: Colors.white),
//          ),
//        ),
        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.search,color: Colors.black,),
//            onPressed: (){
//              dispatch(WebActionCreator.onLaunchUrl());
//            },
//          ),
          IconButton(
            padding: EdgeInsets.only(right: 15.0),
            icon: Icon(Icons.adjust,color: Colors.grey,),
            onPressed: (){
              dispatch(WebActionCreator.onCloseWeb());
            },
          )
        ],
      ),
      url: state.urlString,
      withZoom: false,
    );
}

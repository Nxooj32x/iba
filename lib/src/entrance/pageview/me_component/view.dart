import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(MeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(icon: Icon(Icons.favorite_border), onPressed: null),
      title: Text("我的",style: TextStyle(color: Colors.black87,fontSize: 18.0,fontWeight: FontWeight.bold),),
      centerTitle: true,
      actions: <Widget>[
        IconButton(icon: Icon(Icons.settings), onPressed: null),
        IconButton(icon: Icon(Icons.add_photo_alternate), onPressed: null),
      ],
    ),
    body: ListView(
      children: <Widget>[

      ],
    ),
  );
}

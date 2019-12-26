import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'state.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    body: ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: PhysicalModel(
            color: Colors.transparent, //透明
            borderRadius: BorderRadius.circular(8),
            clipBehavior: Clip.antiAlias, //裁切
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              height: 120,
              width: MediaQuery.of(viewService.context).size.width,
              child: Swiper(
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    "http://via.placeholder.com/350x150",
                    fit: BoxFit.fill,
                  );
                },
                itemCount: 3,
                pagination: new SwiperPagination(),
              ),
            ),
          ),
        )
      ],
    ),
  );
}


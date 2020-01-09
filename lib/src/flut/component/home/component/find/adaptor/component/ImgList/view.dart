import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'state.dart';

Widget buildView(ImgListState state, Dispatch dispatch, ViewService viewService) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Container(
      width: double.infinity,
      height: 135.0,
      child: new Swiper(
        duration: 1500,
        viewportFraction: 0.8,
        scale: .4,
        fade: .4,
        autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return PhysicalModel(child: Container(child: Image.asset("assets/error503.png",fit: BoxFit.fill,)),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            clipBehavior: Clip.antiAlias, //注意这个属性
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(alignment: Alignment.bottomRight,builder: DotSwiperPaginationBuilder(
            color: Colors.orange,
            activeColor: Colors.black12,
            size: 4,
            activeSize: 6
        )),
      ),
    ),
  );
}

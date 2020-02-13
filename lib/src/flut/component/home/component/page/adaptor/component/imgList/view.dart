import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'state.dart';

Widget buildView(ImgListState state, Dispatch dispatch, ViewService viewService) {
  return Padding(
    padding: const EdgeInsets.only(top: 6,bottom: 6),
    child: Container(
      width: double.infinity,
      height: 135.0,
      child: new Swiper(
        duration: 2500,
        viewportFraction: 0.8,
        scale: .4,
        fade: .4,
        autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return PhysicalModel(child: Container(child: Image.network("http://img.pconline.com.cn/images/upload/upc/tx/photoblog/1109/18/c3/9000724_9000724_1334224769181.jpg",fit: BoxFit.cover,)),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            clipBehavior: Clip.antiAlias, //注意这个属性
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(alignment: Alignment.bottomCenter,builder: DotSwiperPaginationBuilder(
            color: Colors.orange,
            activeColor: Colors.black12,
            size: 4,
            activeSize: 6
        )),
      ),
    ),
  );
}

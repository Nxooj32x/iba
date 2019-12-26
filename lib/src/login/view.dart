import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
      body: SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            ClipPath(
              clipper: new BottomClipper(),
              child: Container(
                height: 400.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepOrangeAccent, Colors.orange])),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          PopupMenuButton(
                            onSelected: (index) {},
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '当前登录人',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuItem<int>>[
                              PopupMenuItem(
                                child: Text('Jetty mac',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                value: 0,
                              ),
                              PopupMenuItem(
                                child: Text('Anny tomc',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16)),
                                value: 1,
                              )
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 50.0),
                    Text(
                      "Would you want to\nuse Applicaton",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        child: TextField(
                          controller: TextEditingController(),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            hintText: '用户名',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 32.0, vertical: 13.0),
                              suffixIcon: Material(
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(30.0),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(30.0),
                        child: TextField(
                          obscureText: true,
                          controller: TextEditingController(),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                              hintText: '密码',
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 32.0, vertical: 13.0),
                              suffixIcon: Material(
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(30.0),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.nature_people,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              '登录',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.border_color,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              '注册',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 16.0),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Current Watch Items'),
                  Spacer(),
                  Text(
                    'VIEW ALL',
                    style: TextStyle(
                        fontSize: 12.0, color: Colors.orange.withOpacity(0.6)),
                  )
                ],
              ),
            ),
            Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 210.0,
                                width: 160.0,
                                color: Colors.grey,
                              ),
                              Positioned(
                                left: 0.0,
                                bottom: 0.0,
                                width: 160.0,
                                height: 60.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.black.withOpacity(0.1)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                right: 10,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'ShangHai',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '1990',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 2.0),
                                      child: Text(
                                        '80%',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          width: 160.0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '\$988833',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '(\$82323)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 210.0,
                                width: 160.0,
                                color: Colors.grey,
                              ),
                              Positioned(
                                left: 0.0,
                                bottom: 0.0,
                                width: 160.0,
                                height: 60.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.black.withOpacity(0.1)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                right: 10,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'ShangHai',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '1990',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 2.0),
                                      child: Text(
                                        '80%',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          width: 160.0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '\$988833',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '(\$82323)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 210.0,
                                width: 160.0,
                                color: Colors.grey,
                              ),
                              Positioned(
                                left: 0.0,
                                bottom: 0.0,
                                width: 160.0,
                                height: 60.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.black.withOpacity(0.1)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                right: 10,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'ShangHai',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '1990',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 2.0),
                                      child: Text(
                                        '80%',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          width: 160.0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '\$988833',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '(\$82323)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 210.0,
                                width: 160.0,
                                color: Colors.grey,
                              ),
                              Positioned(
                                left: 0.0,
                                bottom: 0.0,
                                width: 160.0,
                                height: 60.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.black.withOpacity(0.1)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                right: 10,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'ShangHai',
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '1990',
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 2.0),
                                      child: Text(
                                        '80%',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black),
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          width: 160.0,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '\$988833',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '(\$82323)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    ),
  ));
}

//曲线路径
class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path(); //定义路径
    path.lineTo(0, size.height);
    var firstEndPoint = Offset(size.width * .5, size.height - 30.0);
    var firstControlPoint = Offset(size.width * 0.25, size.height - 50.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondEndPoint = Offset(size.width, size.height - 80.0);
    var secondControlPoint = Offset(size.width * 0.75, size.height - 10.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

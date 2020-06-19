import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:ecommerceanima/Anima.dart';
import 'ScreenSize.dart';

class Anima1 extends StatefulWidget {
  static String id = 'Anima1';
  final int ind;
  Anima1({this.ind});

  @override
  _Anima1State createState() => _Anima1State(this.ind);
}

class _Anima1State extends State<Anima1> with SingleTickerProviderStateMixin {
  _Anima1State(this.ind);
  int ind;
  Animation animation,
      animation1,
      animation2,
      animation3,
      animation4,
      animation5;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    animation1 = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    animation2 = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    animation3 = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.1, 1.0, curve: Curves.elasticOut)));

    animation4 = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.3, 1.0, curve: Curves.elasticOut)));

    animation5 = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.elasticOut)));

    animationController.forward();
  }

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(bottom: 30, top: 70, left: 20, right: 20),
                  height: 450,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/g${ind}.jpg')),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.black,
                            iconSize: 20,
                            onPressed: () {
                              Navigator.pop(
                                  context, SlideRightRoute(page: Anima()));
                            },
                          ),
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          AnimatedBuilder(
                            animation: animationController,
                            builder: (BuildContext context, Widget child) {
                              return Transform(
                                transform: Matrix4.translationValues(
                                    0, (-1 * animation3.value * 360.0), 0),
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      )),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'COLOR',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      Text(
                                        'cir',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: animationController,
                            builder: (BuildContext context, Widget child) {
                              return Transform(
                                transform: Matrix4.translationValues(
                                    0, (-1 * animation4.value * 360.0), 0),
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      )),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'PRICE',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      Text(
                                        'Rs.59',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: animationController,
                            builder: (BuildContext context, Widget child) {
                              return Transform(
                                transform: Matrix4.translationValues(
                                    0, (-1 * animation5.value * 360.0), 0),
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.5),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      )),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'SIZE',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 15),
                                      ),
                                      Text(
                                        'M',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 30, right: 20),
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      AnimatedBuilder(
                        animation: animationController,
                        builder: (BuildContext context, Widget child) {
                          return Container(
                            child: Transform(
                              transform: Matrix4.translationValues(
                                  (animation.value * 360.0), 0, 0),
                              child: Text(
                                'Relaxed',
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      AnimatedBuilder(
                          animation: animationController,
                          builder: (BuildContext context, Widget child) {
                            return Transform(
                              transform: Matrix4.translationValues(
                                  (animation1.value * 360.0), 0, 0),
                              child: Text(
                                'Grandad Shirt',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            );
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      AnimatedBuilder(
                          animation: animationController,
                          builder: (BuildContext context, Widget child) {
                            return Transform(
                              transform: Matrix4.translationValues(
                                  (animation2.value * 360.0), 0, 0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = true;
                                  });
                                },
                                child: Text(
                                  'BUY NOW',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xfffe5719),
                                  ),
                                ),
                              ),
                            );
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          AnimatedBuilder(
                              animation: animationController,
                              builder: (BuildContext context, Widget child) {
                                return Transform(
                                  transform: Matrix4.translationValues(
                                      0, (-1 * animation1.value * 360.0), 0),
                                  child: Text(
                                    '4.8',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                );
                              }),
                          SizedBox(width: 10),
                          AnimatedBuilder(
                              animation: animationController,
                              builder: (BuildContext context, Widget child) {
                                return Transform(
                                  transform: Matrix4.translationValues(
                                      0, (-1 * animation2.value * 360.0), 0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.black,
                                    size: 15,
                                  ),
                                );
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        AnimatedBuilder(
                            animation: animationController,
                            builder: (BuildContext context, Widget child) {
                              return Transform(
                                transform: Matrix4.translationValues(
                                    0, (-1 * animation.value * 360.0), 0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    'A casual style,this grandad-collar shirt is made from pure cotton and',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ),
                              );
                            }),
                        Row(
                          children: <Widget>[
                            AnimatedBuilder(
                                animation: animationController,
                                builder: (BuildContext context, Widget child) {
                                  return Transform(
                                    transform: Matrix4.translationValues(
                                        0, (-1 * animation1.value * 360.0), 0),
                                    child: Container(
                                      height: 75,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: Color(0xfffe5719),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.bookmark,
                                        color: Colors.white,
                                      ),
                                    ),
                                  );
                                }),
                            AnimatedBuilder(
                                animation: animationController,
                                builder: (BuildContext context, Widget child) {
                                  return Transform(
                                    transform: Matrix4.translationValues(
                                        0, (-1 * animation.value * 360.0), 0),
                                    child: Container(
                                      height: 75,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Stack(
                                        children: <Widget>[
                                          Center(
                                            child: Icon(
                                              Icons.add_shopping_cart,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Positioned(
                                            top: 10,
                                            right: 10,
                                            child: Icon(
                                              Icons.fiber_manual_record,
                                              color: selected
                                                  ? Colors.deepOrange
                                                  : Colors.black,
                                              size: 15,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}

class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideRightRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

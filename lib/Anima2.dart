import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'ScreenSize.dart';

class Anima2 extends StatefulWidget {
  static String id = 'Anima2';
  @override
  _Anima2State createState() => _Anima2State();
}

class _Anima2State extends State<Anima2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: CupertinoIconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Men',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        )),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    textBaseline: TextBaseline.ideographic,
                    children: <Widget>[
                      Text(
                        'Latest',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Icon(
                        Icons.fiber_manual_record,
                        color: Color(0xfffe5719),
                        size: 10,
                      )
                    ],
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Sale',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/b1.jpeg')),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'KINT JUMPER',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black45),
                              ),
                              Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'BUY NOW',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xfffe5719),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/b2.jpeg')),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'KINT JUMPER',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black45),
                              ),
                              Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'BUY NOW',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xfffe5719),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/b3.jpeg')),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'KINT JUMPER',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black45),
                              ),
                              Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'BUY NOW',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xfffe5719),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 150,
                            width: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/b4.jpeg')),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: <Widget>[
                              Text(
                                'KINT JUMPER',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black45),
                              ),
                              Text(
                                'Rs.45',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'BUY NOW',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xfffe5719),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SlidingUpPanel(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.black,
            panel: Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              width: double.maxFinite,
              child: Column(
                children: <Widget>[
                  Text(
                    'Shirts',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 150,
                          child: Image(
                            image: AssetImage('images/b1.jpeg'),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 150,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Cotton Shirt',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'A mordern style',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Rs.180',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'BUY NOW',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color(0xfffe5719)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                          child: Image(
                            image: AssetImage('images/b2.jpeg'),
                          )),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/b3.jpeg')),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )),
                      ),
                      Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                          child: Image(
                            image: AssetImage('images/b4.jpeg'),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                          child: Image(
                            image: AssetImage('images/b2.jpeg'),
                          )),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/b3.jpeg')),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )),
                      ),
                      Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )),
                          child: Image(
                            image: AssetImage('images/b4.jpeg'),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            height: 50,
            width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              color: Colors.white,
//              decoration: BoxDecoration(
//
//
//                  color: Colors.white,
//                  borderRadius: BorderRadius.only(
//                      topLeft: Radius.circular(30),
//                      topRight: Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Anna Shatohin',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 80),
                        Text(
                          'Fb.',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Tw.',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'In.',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

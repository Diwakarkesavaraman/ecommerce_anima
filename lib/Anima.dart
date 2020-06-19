import 'package:ecommerceanima/Anima1.dart';
import 'package:ecommerceanima/Anima2.dart';
import 'package:flutter/material.dart';
import 'Anima1.dart';
import 'ScreenSize.dart';

class Anima extends StatefulWidget {
  static String id = 'Anima';

  @override
  _AnimaState createState() => _AnimaState();
}

class _AnimaState extends State<Anima> {
  List<int> item = <int>[1, 2, 3, 4];
  bool selected1 = true;
  bool selected2 = false;
  bool selected3 = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'images/pic.jpg',
              ),
              fit: BoxFit.cover)),
      //color: Color(0xffccb5a7),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  left: SizeConfig.blockSizeHorizontal * 6.94,
                  top: SizeConfig.blockSizeVertical * 8.33,
                  right: SizeConfig.blockSizeHorizontal * 6.94),
              height: SizeConfig.blockSizeVertical * 55.55,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'You also may like',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 211,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: item.length,
                      itemBuilder: (
                        BuildContext context,
                        int index,
                      ) {
                        return GestureDetector(
                          onTap: () {
                            print(index);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Anima1(
                                          ind: index + 1,
                                        )));
                          },
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 175,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'images/g${index + 1}.jpg')),
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
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const VerticalDivider(
                        width: 10,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            selected1 = true;
                            selected2 = false;
                            selected3 = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color:
                                  selected1 ? Color(0xfffe5719) : Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            'Women',
                            style: TextStyle(
                              color: selected1 ? Colors.white : Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            selected1 = false;
                            selected2 = true;
                            selected3 = false;
                          });
                          Navigator.pushNamed(context, Anima2.id);
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color:
                                  selected2 ? Color(0xfffe5719) : Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            'Men',
                            style: TextStyle(
                              color: selected2 ? Colors.white : Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            selected1 = false;
                            selected2 = false;
                            selected3 = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color:
                                  selected3 ? Color(0xfffe5719) : Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Text(
                            'Kids',
                            style: TextStyle(
                              color: selected3 ? Colors.white : Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: -40,
              right: 0,
              child: Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Fb.',
                      style: TextStyle(
                        color: Color(0xfffe5719),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Tw.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'In.',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
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

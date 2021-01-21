import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../agriInputRequest.dart';

class SlideBar extends StatefulWidget {
  @override
  _SlideBarState createState() => _SlideBarState();
}

class _SlideBarState extends State<SlideBar>
    with SingleTickerProviderStateMixin<SlideBar> {
  Stream<bool> isSlideOpenStream;
  StreamController<bool> isSlideOpenController;
  AnimationController _animationController;
  StreamSink<bool> isSlideOpenSink;

  final _animationDuration = Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSlideOpenController = PublishSubject<bool>();
    isSlideOpenStream = isSlideOpenController.stream;
    isSlideOpenSink = isSlideOpenController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSlideOpenController.close();
    isSlideOpenSink.close();
    super.dispose();
  }

  void iconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSlideOpenSink.add(false);
      _animationController.reverse();
    } else {
      isSlideOpenSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSlideOpenStream,
      builder: (context, isSlideBarOpenAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSlideBarOpenAsync.data ? 0 : -screenWidth,
          right: isSlideBarOpenAsync.data ? 0 : screenWidth - 60,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Color(0xFF4E0D3A),
                  child: SafeArea(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 20),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Agri-Purchase \nManagement",
                              style: TextStyle(
                                color: Color(0xFFFEDBD0),
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: Colors.white,
                            indent: 16,
                            endIndent: 32,
                          ),
                          ListTile(
                            title: Text(
                              "Agri-Input Master \nMaintenance",
                              style: TextStyle(
                                color: Color(0xFFFEDBD0),
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: Colors.white,
                            indent: 16,
                            endIndent: 32,
                          ),
                          ListTile(
                            title: Text(
                              "Supplier Master\nMaintenance",
                              style: TextStyle(
                                color: Color(0xFFFEDBD0),
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: Colors.white,
                            indent: 16,
                            endIndent: 32,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AgriInputRequest()));
                              },
                              child: ListTile(
                                title: Text(
                                  "Agri-Input \nPurchase Request",
                                  style: TextStyle(
                                    color: Color(0xFFFEDBD0),
                                    fontSize: 25,
                                  ),
                                ),
                              )),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: Colors.white,
                            indent: 16,
                            endIndent: 32,
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 3),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: Colors.white,
                            indent: 16,
                            endIndent: 32,
                          ),
                          ListTile(
                            title: Text(
                              "Tax Master Maintenance",
                              style: TextStyle(
                                color: Color(0xFFFEDBD0),
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.6),
                child: GestureDetector(
                  onTap: () {
                    iconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                      color: Color(0xFF4E0D3A),
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Color(0xFFFEDBD0),
                        size: 25,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;
    final width = size.width;
    final height = size.height;
    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

import 'package:flutter/material.dart';
import 'package:project/for_Slide/slidebar.dart';

import '../homePage.dart';

class SlideBarLayout extends StatefulWidget {
  @override
  _SlideBarLayoutState createState() => _SlideBarLayoutState();
}

class _SlideBarLayoutState extends State<SlideBarLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Homepage(),
          SlideBar(),
        ],
      ),
    );
  }
}

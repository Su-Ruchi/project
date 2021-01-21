import 'package:flutter/material.dart';
import 'package:project/for_Slide/slideLayout.dart';

void main(){
  runApp(Main());
}
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SlideBarLayout(),
    );
  }
}

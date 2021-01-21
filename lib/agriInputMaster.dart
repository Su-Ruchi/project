import 'package:flutter/material.dart';

class AgriInputMaster extends StatefulWidget {
  @override
  _AgriInputMasterState createState() => _AgriInputMasterState();
}

class _AgriInputMasterState extends State<AgriInputMaster> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Input master",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

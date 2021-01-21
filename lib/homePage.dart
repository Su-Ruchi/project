import 'package:flutter/material.dart';
import 'package:project/agriInputRequest.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFEDBD0),
        centerTitle: true,
        title: Text(
          "Agri-Input Master Maintenance",
          style: TextStyle(color: Color(0xFF4E0D3A)),
        ),
      ),
      backgroundColor: Color(0xFFFEDBD0),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Card(
              elevation: 1,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    width: 2,
                  )),
              color: Color(0xFF4E0D3A),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 2.5,
                child: Center(
                    child: Text("Pending",
                        style: TextStyle(
                            color: Color(0xFFFEDBD0),
                            fontSize: 20,
                            fontWeight: FontWeight.bold))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    AgriInputRequest()));
              },
              child: Card(
                elevation: 1,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      width: 2,
                    )),
                color: Color(0xFF4E0D3A),
                child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width / 2.5,
                    child: Center(
                        child: Text("Executing",
                            style: TextStyle(
                                color: Color(0xFFFEDBD0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Card(
              elevation: 1,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    width: 2,
                  )),
              color: Color(0xFF4E0D3A),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 70,
                child: Center(
                    child: Text(
                  "Executed",
                  style: TextStyle(
                      color: Color(0xFFFEDBD0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Card(
              elevation: 1,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    width: 2,
                  )),
              color: Color(0xFF4E0D3A),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 70,
                child: Center(
                  child: Text("Completed",
                      style: TextStyle(
                          color: Color(0xFFFEDBD0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Seeds extends StatefulWidget {
  @override
  _SeedsState createState() => _SeedsState();
}

class _SeedsState extends State<Seeds> {
  final backgroundColor=Color(0xFFFEEAE6);
  final backgroundPurpleColor=Color(0xFF4E0D3A);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  backgroundColor,
     appBar: AppBar(
       elevation: 0,
        backgroundColor: backgroundColor,
        //centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,color:backgroundPurpleColor ,),
        ),
/*        title: Text("Seeds",
          style: TextStyle(
              color: backgroundColor
          ),)*/
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              child: Image.asset("asset/image/seed_t.png"),
              height: MediaQuery.of(context).size.height / 2.5,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  child:Text("Seeds/Seedlings",
                  style: TextStyle(fontSize: 30,
                  color: backgroundPurpleColor),)
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Icon(Icons.star,color: backgroundPurpleColor,),
                SizedBox(width: 10,),
                Text("4.5 Reviews"),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Order Quantity : ",
                    style: TextStyle(
                        color: backgroundPurpleColor
                    )),
                SizedBox(width: 10,),
                Text("26",
                    style: TextStyle(
                        color: backgroundPurpleColor
                    )),
              ],
            ),
            SizedBox(height: 10,),
            Divider(
              height: 20,
              thickness: 1.5,
              color: backgroundPurpleColor,
              indent: 1,
              endIndent: 32,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Description ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: backgroundPurpleColor
                ),),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 30,),
                Text("Chill Sakata 651(1500 seeds)",
                    style: TextStyle(
                        color: backgroundPurpleColor
                    )),
              ],
            ),
            SizedBox(height: 70),
            RaisedButton(onPressed: (){
              Navigator.pop(context);
            },
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10)
),
              color: backgroundPurpleColor,
            child: Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/15,
              child: Center(
                child: Text("Continue",
                    style: TextStyle(
                        color: backgroundColor,
                      fontSize: 20
                    )),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}

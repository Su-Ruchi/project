
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project/Listsdescription/growingMedium.dart';
import 'package:project/Listsdescription/nutrient.dart';
import 'package:project/Listsdescription/pesticide.dart';


import 'Listsdescription/seeds.dart';

class AgriInputRequest extends StatefulWidget {
  @override
  _AgriInputRequestState createState() => _AgriInputRequestState();
}

class _AgriInputRequestState extends State<AgriInputRequest> {
  final backgroundColor = Color(0xFFFEEAE6);
  final backgroundPurpleColor = Color(0xFF4E0D3A);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xFF4E0D3A),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: backgroundColor,
          ),
        ),
        title: Text(
          "Executing Agri-Input Orders",
          style: TextStyle(color: backgroundColor),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView.builder(
          itemCount: 4 ,
          itemBuilder: ( context,int index){
            return Column(
              children: [
                ExpansionTile(
                  backgroundColor: backgroundPurpleColor,
                  collapsedBackgroundColor: backgroundPurpleColor,
                  leading: Icon(
                    Icons.circle,
                    color: backgroundColor,
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: backgroundColor,
                  ),
                  title: Text(
                    "AGBUY13042020_1042",
                    style: TextStyle(color: backgroundColor),
                  ),

                  children: [
                    ExpansionTile(
                      trailing: Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: backgroundColor,
                      ),
                      title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Name",
                        style: TextStyle(
                          color: backgroundColor,
                        ),),
                        Container(
                          height: 30,
                         padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: backgroundColor)
                          ),
                          child: Row(
                            children: [
                              Text("Download",
                                style: TextStyle(
                                  color: backgroundColor,
                                ),),
                              Icon(Icons.download_done_outlined,
                              color: backgroundColor,)
                            ],
                          ),
                        )
                      ],
                    ),

                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          children: [

                            Divider(
                              height: 40,
                              thickness: 0.5,
                              color: backgroundColor,
                              indent: 1,
                              endIndent: 8,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "S.No",
                                  style: TextStyle(fontSize: 12, color: backgroundColor),
                                ),
                                Text(
                                  "Agri-Input \nCategory",
                                  style: TextStyle(fontSize: 12, color: backgroundColor),
                                ),
                                Text(
                                  "Product \nImage",
                                  style: TextStyle(fontSize: 12, color: backgroundColor),
                                ),
                                Text(
                                  "  Order \nQuantity",
                                  style: TextStyle(fontSize: 12, color: backgroundColor),
                                )
                              ],
                            ),
                            Divider(
                              height: 40,
                              thickness: 0.5,
                              color: backgroundColor,
                              indent: 1,
                              endIndent: 8,
                            ),

                            //seed
                            Slidable(
                              child: Container(
                                // margin: EdgeInsets.symmetric(horizontal: 10),
                                color: backgroundPurpleColor,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("1.",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Text("Seeds/\nSeedlings",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Container(
                                            height: 40,
                                            child: Image.asset("asset/image/seed_t.png")),

                                        Text("26",
                                            style:
                                            TextStyle(fontSize: 12, color: backgroundColor))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              actionPane: SlidableDrawerActionPane(),
                              secondaryActions: [
                                IconSlideAction(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => Seeds()));
                                  },
                                  //  icon: FaIcon(FontAwesomeIcons.stream)),
                                  icon: Icons.add_shopping_cart_outlined,
                                  foregroundColor: backgroundPurpleColor,
                                  color: backgroundColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            //nutrient
                            Slidable(
                              child: Container(
                                // margin: EdgeInsets.symmetric(horizontal: 10),
                                color: backgroundPurpleColor,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("2",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Text("Nutrient",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Container(
                                            height: 40,
                                            child: Image.asset("asset/image/nutrient_t.png")),

                                        Text("114",
                                            style:
                                            TextStyle(fontSize: 12, color: backgroundColor))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              actionPane: SlidableDrawerActionPane(),
                              secondaryActions: [
                                IconSlideAction(
                                  foregroundColor: backgroundPurpleColor,
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Nutrient()));
                                  },
                                  //  icon: FaIcon(FontAwesomeIcons.stream)),
                                  icon: Icons.add_shopping_cart_outlined, color: backgroundColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            //pesticide
                            Slidable(
                              child: Container(
                                // margin: EdgeInsets.symmetric(horizontal: 10),
                                color: backgroundPurpleColor,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("3",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Text("Pesticide",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Container(
                                            height: 40,
                                            child: Image.asset("asset/image/Pesticide.png")),

                                        Text("40",
                                            style:
                                            TextStyle(fontSize: 12, color: backgroundColor))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              actionPane: SlidableDrawerActionPane(),
                              secondaryActions: [
                                IconSlideAction(
                                  foregroundColor: backgroundPurpleColor,
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Pesticide()));
                                  },
                                  //  icon: FaIcon(FontAwesomeIcons.stream)),
                                  icon: Icons.add_shopping_cart_outlined, color: backgroundColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            //growing Medium
                            Slidable(
                              child: Container(
                                //margin: EdgeInsets.symmetric(horizontal: 10),
                                color: backgroundPurpleColor,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("4",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Text("Growing \nMedium",
                                            style: TextStyle(
                                                fontSize: 12, color: backgroundColor)),

                                        Container(
                                            height: 40,
                                            child:
                                            Image.asset("asset/image/Growing Medium.jpg")),

                                        Text("20",
                                            style:
                                            TextStyle(fontSize: 12, color: backgroundColor))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              actionPane: SlidableDrawerActionPane(),
                              secondaryActions: [
                                IconSlideAction(
                                  foregroundColor: backgroundPurpleColor,
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GrowingMedium()));},
                                  //  icon: FaIcon(FontAwesomeIcons.stream)),
                                  icon: Icons.add_shopping_cart_outlined, color: backgroundColor,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],),
                   /* Divider(
                      height: 40,
                      thickness: 0.5,
                      color: backgroundColor,
                      indent: 15,
                      endIndent: 22,
                    ),*/




                  ],
                ),
                SizedBox(height: 20,)
              ],
            );
          },
        ),
      )

      /*Container(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context,int index){
            return Row(
              children: [
                IconButton(icon: Icon(Icons.circle),
                    onPressed: (){}),
                Text("AGBUY13042020_1042",
                style: TextStyle(
                  fontSize: 15,

                ),),
              ],
            );
          },
        ),
      )*/
      ,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gridhome/model/gridhomemodel.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List items =[
   GridFamilyModel(text1: "Guid", text2: "Rule and how\nto play", img: 'images/image1.png',clr:Colors.blue),
    GridFamilyModel(text1: "Profile", text2: "Your Information\nand History", img: 'images/image2.png',clr:Colors.green ),
    GridFamilyModel(text1: "Sttings", text2: "Change settings\nfor game", img: 'images/image3.png',clr:Colors.blue ),
    GridFamilyModel(text1: "About us", text2: "Info about us\nand feedback", img: 'images/image4.jpeg',clr:Colors.grey )
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView"),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.white,
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.brown,

                ),
                child: Row(
                  children: [
                    Icon(Icons.hexagon,color: Colors.blueAccent,size: 100,),
                  SizedBox(width: 40,),
                  Text("Play Game", style: TextStyle(color: Colors.black,fontSize:30,fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Row(
                children:[
                  Expanded(
                      child: Divider(
                        height: 10,
                        color: Colors.black,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      )
                  ),

                  Text("Some other Fetuers"),

                  Expanded(
                      child: Divider(
                        height: 10,
                        color: Colors.black,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,

                      )
                  ),
                ]
            ),
            // SizedBox(height: 3,),
            Container(
                padding: EdgeInsets.all(12.0),
                child: GridView.builder(
                  shrinkWrap: true,
                   itemCount: items.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.brown,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: items[index].clr,
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(items[index].img),
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(items[index].text1, style: TextStyle(color: Colors.black,fontSize:25,fontWeight: FontWeight.bold), ),
                          SizedBox(height: 8.0),
                          Text(items[index].text2, style: TextStyle(color: Colors.black,fontSize:20), ),
                        ],
                      ),
                    );
                  },
                )

            ),
          ],
        )



    );

  }
}

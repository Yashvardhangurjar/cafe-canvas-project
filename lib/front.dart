import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Front extends StatefulWidget{
  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {

  int currentpage=0;

  Widget build (BuildContext context){
    return
        Scaffold(
          body: ListView(
            children: [Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 26,horizontal: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/images/solo.jfif"),),
                      OutlinedButton(onPressed: (){}, child: Text("messages")),
                      Stack(
                        children: [
                          Icon(Icons.notifications),
                          Positioned(right: 3
                              ,child:Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.red
                            ),child: Padding(
                              padding: EdgeInsets.only(left:2.0,bottom: 1),
                              child: Text("3",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),
                            ),
                          ) )
                        ],
                      ),
                    ],
                  ),
                ),Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hey Yash",style: TextStyle(fontSize: 25),),
                      Text("How are you must want groceries",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),Padding(
                  padding:EdgeInsets.only(top: 15),
                  child: SizedBox(width: 320,
                    child: TextField(
                      decoration: InputDecoration(hintText: "Search here groceries",
                        border: OutlineInputBorder(
                          borderSide: BorderSide()
                        ),focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 2)
                      ),prefixIcon: Icon(Icons.search)
                      ),
                    ),
                  ),
                ),
                Container(height: 250,
                  child: PageView(
                    children: [
                          Image.asset("assets/images/fresh produce.jpg",),
                      Container(
                        child: Image.asset("assets/images/Shopping with tote.jpg"),
                      ),
                      Container(
                        child: Image.asset("assets/images/fresh produce.jpg"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("Categories",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: 10),
                  child: SizedBox(height: 100,
                    child: ListView(scrollDirection: Axis.horizontal,
                      children: [
                        Column(children: [
                          CircleAvatar(backgroundImage: AssetImage("assets/images/cold coffee.jpg"),radius: 30,),
                          Text("cold coffee")
                        ],),
                        Padding(
                          padding:EdgeInsets.only(left: 15),
                          child: Column(children: [
                            CircleAvatar(backgroundImage: AssetImage("assets/images/hot tea.jpg"),radius: 30,),
                            Text("Hot tea")
                          ],),
                        ), Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(children: [
                            CircleAvatar(backgroundImage: AssetImage("assets/images/fresh produce.jpg"),radius: 30,),
                            Text("Fruits")
                          ],),
                        ), Padding(
                          padding:EdgeInsets.only(left: 15),
                          child: Column(children: [
                            CircleAvatar(backgroundImage: AssetImage("assets/images/Grocery Shopping .jpg"),radius: 30,),
                            Text("Vegatables")
                          ],),
                        ),Padding(
                          padding:EdgeInsets.only(left: 15),
                          child: Column(children: [
                            CircleAvatar(backgroundImage: AssetImage("assets/images/Shopping with tote.jpg"),radius: 30,),
                            Text("Other")
                          ],),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
            ],
          )
        );
  }
}
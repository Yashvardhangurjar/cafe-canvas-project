
import 'package:flutter/material.dart';
import 'package:untitled2/data%20table.dart';

class Routing extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(backgroundColor: Colors.orangeAccent[100],
            title: Text("Cafe Canvas",style: TextStyle(fontStyle:FontStyle.italic )),centerTitle: true,
          ),backgroundColor: Colors.orangeAccent[100],
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(decoration:
                BoxDecoration(
                  color: Colors.blue
                ),
                  child: Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage("assets/images/hot tea.jpg"),
                      ),
                      Text("YASHVARDHAN GURJAR")
                    ],
                  ),
                ),
                Column(
                  children: [
                    ListTile(
                      title: Text("HOME"),
                      leading: Icon(Icons.home),
                    ),
                    ListTile(
                      title: Text("PROFILE"),
                      leading: Icon(Icons.person),
                    ),
                    ListTile(
                      title: Text("LOG OUT"),
                      leading: Icon(Icons.logout),
                    )
                  ],
                )
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(children: [
                  Text("MENU",style: TextStyle(fontSize: 20),)
                ],),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(width: 300,height: 50
                    ,child: TextField(
                      decoration: InputDecoration(
                        hintText: "SEARCH HERE...",
                        focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black,width: 2)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black)
                        ),prefixIcon: Icon(Icons.search_rounded)

                      ),
                    ),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("CATEGORY")
                        ],
                      )
                    ],
                  ),
                ),Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 40,
                    child: ListView(scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: 8),
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent ,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                                )
                              ),child: Text("HOT COFFEE",
                            style: TextStyle(color: Colors.black),),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent ,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),child: Text("COLD COFFEE",
                              style: TextStyle(color: Colors.black)),),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 8),
                          child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent ,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),child: Text("COCA COLA",
                              style: TextStyle(color: Colors.black)),),
                        ),
                        ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent ,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)
                              )
                          ),child: Text("HOT TEA",
                            style: TextStyle(color: Colors.black)),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 407,
                    child: GridView.count(crossAxisCount: 2,crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Container(decoration: BoxDecoration(color: Colors.orangeAccent
                        ,border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15)
                      ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/cold coffee.jpg",height: 100,),
                            Column(
                              children: [Text("COLD COFFEE",style: TextStyle(fontSize: 15),),
                              Text("RS. 150")],
                            )
                          ],
                        ),
                      ),Container(
                        decoration: BoxDecoration(color: Colors.orangeAccent,
                          border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/hot coffee.jpg",height: 100,),
                            Column(
                              children: [Text("HOT COFFEE",style: TextStyle(fontSize: 15),),
                              Text("RS. 150")],
                            )
                          ],
                        ),
                      ),Container(
                        decoration: BoxDecoration(color: Colors.orangeAccent,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/hot tea.jpg",height: 100,),
                            Column(
                              children: [Text("HOT TEA",style: TextStyle(fontSize: 15),),
                                Text("RS. 150")],
                            )
                          ],
                        ),
                      ),Container(
                        decoration: BoxDecoration(color: Colors.orangeAccent,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/hot coffee.jpg",height: 100,),
                            Column(
                              children: [Text("HOT COFFEE",style: TextStyle(fontSize: 15),),
                                Text("RS. 150")],
                            )
                          ],
                        ),
                      ),Container(
                        decoration: BoxDecoration(color: Colors.orangeAccent,
                            border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/cold coffee.jpg",height: 100,),
                            Column(
                              children: [Text("COLD COFFEE",style: TextStyle(fontSize: 15),),
                                Text("RS. 150")],
                            )
                          ],
                        ),
                      ),
                    ],),
                  ),
                )
              ],
            ),
          ),
          
        );
  }
}
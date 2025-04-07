import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Catogaries extends StatelessWidget{
  Widget build (BuildContext context){
    return
        Scaffold(
          body: ListView(
            children: [
              ListTile(
                leading: Text("Catogaries",style: TextStyle(fontSize: 25),),
                trailing:  Stack(
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
              ),
              Padding(
                padding:EdgeInsets.all(10),
                child: SizedBox(width: 300,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Search here ",
                        border: OutlineInputBorder(
                            borderSide: BorderSide()
                        ),focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2)
                        ),prefixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("All Catogaries",style: TextStyle(fontSize: 20),),
                    Icon(Icons.format_align_left)
                  ],
                ),
              ),
              SizedBox(height: 500,
                child: GridView.count(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15,
                children: [
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink[100]),
                    child:
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Column(
                        children: [Image.asset("assets/images/fresh produce.jpg",width: 150,),
                        Column(
                          children: [Text("Fruits",style: TextStyle(fontSize: 25),)],
                        )],
                      ),
                    ),
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100]),
                    child:
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Column(
                        children: [Image.asset("assets/images/Grocery Shopping .jpg",height: 80,),
                          Column(
                            children: [Text("vegatable",style: TextStyle(fontSize: 25),)],
                          )],
                      ),
                    ),
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blueGrey[100]),
                    child:
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Column(
                        children: [Image.asset("assets/images/Shopping with tote.jpg",width: 150,),
                          Column(
                            children: [Text("bread",style: TextStyle(fontSize: 25),)],
                          )],
                      ),
                    ),
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent[100]),
                    child:
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Column(
                        children: [Image.asset("assets/images/hot coffee.jpg",height: 80,),
                          Column(
                            children: [Text("Coffee",style: TextStyle(fontSize: 25),)],
                          )],
                      ),
                    ),
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red[100]),
                    child:
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Column(
                        children: [Image.asset("assets/images/hot tea.jpg",height: 80,),
                          Column(
                            children: [Text("Tea",style: TextStyle(fontSize: 25),)],
                          )],
                      ),
                    ),
                  ),
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green[100]),
                    child:
                    Padding(
                      padding: EdgeInsets.only(top:20),
                      child: Column(
                        children: [Image.asset("assets/images/cold coffee.jpg",height: 80,),
                          Column(
                            children: [Text("Cold coffee",style: TextStyle(fontSize: 25),)],
                          )],
                      ),
                    ),
                  ),
                ],),
              )
            ],
          ),
        );
  }
}
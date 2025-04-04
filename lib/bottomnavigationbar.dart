import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/data%20table.dart';
import 'package:untitled2/mobiletask.dart';
import 'package:untitled2/routing.dart';

class Bottomnavigationbar extends StatefulWidget{
  const Bottomnavigationbar({super.key});

  State<Bottomnavigationbar> createState()=>
      _BottomnavigationbarState();
}
class _BottomnavigationbarState extends
    State<Bottomnavigationbar>{
  int selectBottomnavVal=0;
  List pages =[
    Routing(),
    Datatable(),
    Mobiletask()
  ];
  Widget build(BuildContext context){
    return
        Scaffold(
          body: Center(
            child: pages.elementAt(selectBottomnavVal),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "HOME"),
              BottomNavigationBarItem(icon: Icon(Icons.person),
                  label: "PROFILE"),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                  label: "SETTING"),
            ],
            currentIndex: selectBottomnavVal,
            onTap: (value){
              print("Select index ${value}");
              setState(() {
                selectBottomnavVal= value;
              });
            },
          ),
        );
  }
}
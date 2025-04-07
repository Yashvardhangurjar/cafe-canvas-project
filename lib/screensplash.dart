import 'dart:async';


import 'package:flutter/material.dart';
import 'package:untitled2/pageview.dart';

class Screensplash extends StatefulWidget{
  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Pageview()));
    });
  }


  Widget build(BuildContext context){
    return
        Scaffold(
          body: Container(
            color: Colors.white,
            child: Center(
              child:
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_rounded,color: Colors.orange,size: 50,),
                  Text("GROFAST",style: TextStyle(
                    color: Colors.green,fontSize: 50,
                    fontWeight: FontWeight.w700,),)
                ],
              ),
            ),
          ),
        );
  }
}
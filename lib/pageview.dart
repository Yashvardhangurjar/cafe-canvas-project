import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/loginpage.dart';
import 'package:untitled2/routing.dart';

class Pageview extends StatefulWidget{
  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {

  int currentpage=0;

  Widget build(BuildContext context){
    return
        Scaffold(
          body: PageView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                  Image.asset("assets/images/fresh produce.jpg"),
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text("Fresh groceries to your Doorstep!",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Text("I am here to say that any groceries you want order them by sitting in your home and taking them at your doorstep!",
                        textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentpage==0?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,),
                        currentpage==1?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,),
                        currentpage==2?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,)

                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 90),
                      child: Container(
                        height: 40,width: 350,
                        child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:
                            (context){return
                          Login();}));
                        }, child: Text("START"),style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Image.asset("assets/images/Grocery Shopping .jpg"),
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text("shop your daily necessary!",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 27),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Text("I am here to say that any groceries you want order them by sitting in your home and taking them at your doorstep!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      currentpage==0?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,),
                      currentpage==1?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,),
                      currentpage==2?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,)

                    ],),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Container(
                        height: 40,width: 350,
                        child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:
                            (context){return
                          Login();}));
                        }, child: Text("START"),style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Image.asset("assets/images/Shopping with tote.jpg"),
                    Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text("Fast shipment to your home!",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Text("I am here to say that any groceries you want order them by sitting in your home and taking them at your doorstep!",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12),),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentpage==0?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,),
                        currentpage==1?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,),
                        currentpage==2?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size:10,color: Colors.black,),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Container(
                        height: 40,width: 350,
                        child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:
                        (context){return
                          Login();}));
                        }, child: Text("START"),style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero))),
                      ),
                    )
                  ],
                ),
              ),
            ],
            onPageChanged: (index){
              setState(() {
                currentpage=index;
              });
            },
          ),
        );
  }
}
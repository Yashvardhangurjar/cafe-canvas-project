import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mobiletask extends StatelessWidget{
  Widget build(BuildContext build){
    return
        Scaffold(
          appBar: AppBar(
            title: Text("mobile task"),
          ),
          body: Center(
            child: Container(
              height: 700,
              width: 300,
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 13),
              decoration: BoxDecoration(
                border: Border.all (color: Colors.black,
                width: 3),
                borderRadius: BorderRadius.all(Radius.circular(20),),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
                      Text("back"),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Welcome to Gotaxi",style: TextStyle(fontSize: 30),)
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(margin: EdgeInsets.only(top: 15),
                        height: 50,
                        width: 280,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                        ),
                        child: Row(
                          children: [
                            Text("YASH GURJAR",style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(margin: EdgeInsets.only(top: 15),
                        height: 50,
                        width: 280,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                        ),
                        child: Row(
                          children: [
                            Text("xyz@gmail.com",style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(margin: EdgeInsets.only(top: 10),
                        height: 50,
                        width: 300,
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 3)
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.phone_android),
                            Text("+91 987654321",style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.only(top: 15),
                            height: 50,
                            width: 280,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Gender"),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [Container(margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.only(left: 10),
                          child: Text("By creating an account you agree with our term of services & privacy polices"),
                        )],
                      ),
                          Container(margin: EdgeInsets.only(top: 20),
                            width: 250,
                            height: 50,
                            child:
                                ElevatedButton(onPressed: (){}, child: Text("sign up"),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  backgroundColor: Colors.yellow,
                                ),)
                          ),
                      Container(margin: EdgeInsets.only(top: 15
                      ),padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            OutlinedButton.icon(
                              onPressed: (){}, label: Text("Google"),icon: Icon(Icons.g_mobiledata),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                              )
                            ),),
                            SizedBox(width: 8,),
                            OutlinedButton.icon(onPressed: (){},
                              label: Text("facebook"),icon: Icon(Icons.facebook),style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),)
                          ],
                        ),
                      ),
                      Container(margin: EdgeInsets.only(top: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("don't have an account?"),
                            TextButton(onPressed: (){}, child: Text("sign up",style: TextStyle(color: Colors.yellow),))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
          );

  }
}
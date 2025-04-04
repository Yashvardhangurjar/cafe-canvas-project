import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttontask extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(
            title: Text("button"),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 200,
              width: 800,
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(5))
              ),
                child: Column(
                  children: [
                  SizedBox(height:50 ,
                    width: 800,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("pet the doggo at least twice!",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("description",style: TextStyle(fontSize: 14),)
                      ],
                    ),
                  ),
                    Column(
                      children: [
                        Container(margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              OutlinedButton.icon(onPressed: (){}, label: Text("due date"),icon:Icon(Icons.calendar_today),
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)
                                  )
                                ),),SizedBox(width: 8,),
                              OutlinedButton.icon(onPressed: (){}, label: Text("priority"),icon: Icon(Icons.flag),
                                   style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),),SizedBox(width: 8,),
                              OutlinedButton.icon(onPressed: (){}, label: Text("Reminder"),icon: Icon(Icons.alarm),
                                style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),),SizedBox(width: 8,),
                              OutlinedButton.icon(onPressed: (){}, label: Text("..."),
                                style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                              ),),
                            ],
                          ),
                        ),
                        Divider(),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.tag,color: Colors.red,),
                                SizedBox(width: 8,),
                                Text("personal"),
                                SizedBox(width: 8,),
                                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_drop_down))

                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: (){},
                                    child: Text("cancel",style: TextStyle(
                                  color:Colors.black)
                                ),),SizedBox(width: 8,),
                                ElevatedButton(onPressed: (){},
                                    style:ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red
                                    )
                                  ,child: Text("Add task",style: TextStyle(
                                  color: Colors.white,
                                ),))
                              ],
                            )
                          ],
                        )
                      ],
                    )
              ],
            ),
            ),
          ),
                        );


          











  }
}
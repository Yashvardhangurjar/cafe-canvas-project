import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(
            title: Text("button"),
          ),
          body: Container(
            child: Row(
              children: [
                ElevatedButton(
                    onPressed:() {},
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                backgroundColor: Colors.yellow
            ),

                  child: Text("click",style: TextStyle(
                    color: Colors.black,
                  ),),
                ),
                OutlinedButton(
                  child: Text("click",style: TextStyle(
                    color: Colors.black
                  ),),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("click",style: TextStyle(color: Colors.black),),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  color: Colors.red,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        );
  }
}
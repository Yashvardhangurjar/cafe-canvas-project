import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/bottomnavigationbar.dart';
import 'package:untitled2/registration.dart';
import 'package:untitled2/routing.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
  int value=0;
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  void _Registor(){
    if(_formkey.currentState!.validate()){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnavigationbar()));
    };

  }

  Widget build(BuildContext context){
    return
        Scaffold(
          body: ListView(children: [Form(key: _formkey,
          child:Padding(
            padding: EdgeInsets.symmetric(vertical: 55,horizontal: 25),
               child:  Column(
                  children: [
                    Text("Welcome back to Grofast!",style: TextStyle(fontSize: 30),),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: TextFormField(validator: (value){
                        if(value!.isEmpty){
                          return "Enter Name";
                        }
                        return null;
                      },
                        decoration: InputDecoration(hintText: "Full Name",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 3)
                          ),prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: TextFormField(obscureText: true
                        ,validator: (value){
                        if(value!.isEmpty){
                          return "Enter Password";
                        }
                        return null;
                      },
                        decoration: InputDecoration(hintText: "Enter password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white38)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 3)
                          ),prefixIcon: Icon(Icons.lock)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forget password?")
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(width: 300,
                        child: ElevatedButton(onPressed: _Registor,
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero
                            )
                          ), child: Text("Log In",style: TextStyle(color: Colors.black),),),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                          }, child:Text("Create an Account.sign up?"))
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 150),
                      child: SizedBox(width: 300,
                        child: ElevatedButton.icon(onPressed: (){}, label: Text("continue with google",
                        style: TextStyle(color: Colors.black),),
                        icon: Icon(Icons.g_mobiledata_outlined),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero
                          )
                        ),),
                      ),
                    ),
                    SizedBox(width: 300,
                      child: ElevatedButton.icon(onPressed: (){}, label: Text("continue with Facebook",
                        style: TextStyle(color: Colors.black),),
                        icon: Icon(Icons.facebook,color: Colors.blue,),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero
                            )
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text("Term & condition?",style: TextStyle(color: Colors.orange),)
                        ],
                      ),
                    )
                  ],
                ),
          )),])
        );
  }
}
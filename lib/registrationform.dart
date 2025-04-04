import 'package:flutter/material.dart';

class Registrationform extends StatefulWidget{
  const Registrationform({super.key});
  @override
  State<Registrationform> createState() => _RegistrationformState();
}

class _RegistrationformState extends State<Registrationform> {
  int _value=1;
  bool c1 =false;
  bool c2=false;
  bool c3=false;
  GlobalKey<FormState>_formkey = GlobalKey<FormState>();
  void _submitform(){
    if(_formkey.currentState!.validate()){}
  }
  @override
  Widget build(BuildContext context){
    return
        Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            child: Container(
              height: 800,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 3)
              ),child: ListView(
              children: [Form(
              key:_formkey, child:Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [Text("Student Registration",style: TextStyle(fontSize: 20,))],
                      ),Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(validator: (value){
                                  if(value!.isEmpty){
                                    return"Enter name";
                                  }
                                  return null;
                                }
                                  ,decoration: InputDecoration(hintText: "FIRST NAME",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black,width: 2),
                                      )
                                  ),
                                ),
                              ),SizedBox(width:10,),
                              Expanded(
                                child: TextFormField(validator: (value){
                                  if(value!.isEmpty){
                                    return"Enter name";
                                  }
                                  return null;
                                },
                                  decoration: InputDecoration(hintText: "LAST NAME",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black,width: 2),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(validator: (value){
                                  if(value!.isEmpty){
                                    return"Enter Email address";
                                  }
                                  return null;
                                },
                                  decoration: InputDecoration(hintText: "Email ",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black,width: 2),
                                      )
                                  ),
                                ),
                              ),SizedBox(width: 10,),
                              Expanded(child:
                              TextFormField(validator: (value){
                                if(value!.isEmpty){
                                  return"Enter valid mobile no.";
                                }
                                return null;
                              },
                                decoration: InputDecoration(hintText: "MOBILE NO.",
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black,width: 2),
                                    )
                                ),
                              ),)
                            ],
                          ),
                        ),
                      ),Padding(
                        padding: const EdgeInsets.only(right: 150,top: 10),
                        child: SizedBox(height: 50,width: 145,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(validator: (value){
                                  if(value!.isEmpty){
                                    return"Enter city name";
                                  }
                                  return null;
                                },
                                  decoration: InputDecoration(hintText: "CITY",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.black)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black,width: 2),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: Colors.black),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Gender"),
                          Row(children: [
                            Radio(value: 1, groupValue: _value, onChanged: (value){
                              setState(() {
                                _value = value!;
                              });
                            }),Text("MALE")
                          ],
                          ),Row(children: [
                            Radio(value: 2, groupValue: _value, onChanged: (value){
                              setState(() {
                                _value = value!;
                              });
                            }),Text("Female")
                        ],
                      ),
                      Divider(color: Colors.black),
                      Column( crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("hobbies"),
                          Row(
                            children: [
                              Checkbox(value: c1, onChanged: (value){
                                setState(() {
                                 c1 = value!;
                                });
                              }),Text("Cricket")
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value: c2, onChanged: (value){
                                setState(() {
                                  c2 = value!;
                                });
                              }),Text("football")
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value: c3, onChanged: (value){
                                setState(() {
                                  c3 = value!;
                                });
                              }),Text("chess")
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.black,),
                      TextField(obscureText: true,
                        decoration: InputDecoration(hintText: "Password",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black
                                )
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(width: 300,
                          child: ElevatedButton(onPressed: _submitform,style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(),backgroundColor: Colors.blueGrey[100]
                          ), child: Text("Register")),
                        ),
                      )
                    ],
                  ),
               ] )
                )) ],
            )
,
              ),
            ),
          );
  }
}
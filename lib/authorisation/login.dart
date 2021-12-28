//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_){FocusManager.instance.primaryFocus?.unfocus();},
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                  height: 70.0,
                ),
                Text(
                  "Instagram",
                  style: TextStyle(
                    fontSize: 60.0,
                    fontFamily: "Billabong",
                  ),
                ),
                Container(height: 22.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 47.0,
                      child: TextField(

                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1.0, color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              //borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(width: 1.0, color: Colors.grey.shade400)
                            ),
                            labelText: "Username",
                            labelStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                            floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 47.0,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.0, color: Colors.blue)
                            ),
                            enabledBorder: OutlineInputBorder(
                              //borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(width: 1.0, color: Colors.grey.shade400)
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.grey[400],
                            ),
                            floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                            )
                        ),
                        obscureText: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){},child: Text("Forgot Password?")),
                      ],
                    ),
                    Container(
                      height: 14.0,
                    ),
                    SizedBox(
                      height: 46.0,
                      child: TextButton(

                        onPressed: (){}, child: Text("Log in", style: TextStyle(color: Colors.white),),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: Colors.blue,

                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 150.0,
                      child: Divider(
                        color: Colors.grey,
                        height: 80.0,
                      ),
                    ),
                    Text("OR", style:TextStyle(color: Colors.grey)),
                    SizedBox(
                      width: 150.0,
                      child: Divider(
                        color: Colors.grey,
                        height: 80.0,
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(color: Colors.grey),),
                    TextButton(onPressed: (){}, child: Text("Sign Up")),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}

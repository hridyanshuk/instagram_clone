//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Instagram", style: TextStyle(fontFamily: "Billabong", fontSize: 60.0)),
                SizedBox(
                  height: 80.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 47.0,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.grey.shade400,
                            )
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1.0,
                              color: Colors.blue,
                            )
                          ),

                          filled: true,

                          fillColor: Colors.grey[100],

                          labelText: "Username",

                          floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey[400],
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 47.0,
                      child: TextField(
                        obscureText: true,

                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.grey.shade400,
                              )
                          ),

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.blue,
                              )
                          ),

                          filled: true,

                          fillColor: Colors.grey[100],

                          labelText: "Password",

                          floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                          ),

                          focusColor: Colors.white,

                          labelStyle: TextStyle(
                            color: Colors.grey[400],
                          ),

                        ),
                      ),
                    ),
                    Container(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 47.0,
                      child: TextField(
                        obscureText: true,

                        decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.grey.shade400,
                              )
                          ),

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.blue,
                              )
                          ),

                          filled: true,

                          fillColor: Colors.grey[100],

                          labelText: "Confirm Password",

                          floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                          ),

                          focusColor: Colors.white,

                          labelStyle: TextStyle(
                            color: Colors.grey[400],
                          ),

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
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.grey.shade400,
                              )
                          ),

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                                color: Colors.blue,
                              )
                          ),

                          filled: true,

                          fillColor: Colors.grey[100],

                          labelText: "Email ID",

                          floatingLabelStyle: TextStyle(
                            color: Colors.blue,
                          ),

                          focusColor: Colors.white,

                          labelStyle: TextStyle(
                            color: Colors.grey[400],
                          ),

                        ),
                      ),
                    ),
                    Container(
                      height: 10.0,
                    ),
                    SizedBox(
                      height: 46.0,
                      child: TextButton(
                        onPressed: (){},
                        child: Text(
                          "Sign up", style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 150.0,
                      child: Divider(
                        thickness: 1.0,
                        height: 80.0,
                        color: Colors.grey,
                      ),
                    ),
                    Text("OR", style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      width: 150.0,
                      child: Divider(
                        thickness: 1.0,
                        height: 80.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account?"),
                    TextButton(onPressed: (){}, child: Text("Log in"))
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

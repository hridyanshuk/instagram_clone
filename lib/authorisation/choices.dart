//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_clone/authorisation/login.dart';
import 'package:instagram_clone/authorisation/signup.dart';
class Choices extends StatelessWidget {
  const Choices({Key? key}) : super(key: key);
  static const id="/auth/choices.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Column(
            children: [
              Expanded(child: Container(), flex: 40,),
              Expanded(
                child: Center(
                  child: Text(
                    "Instagram",
                    style: TextStyle(
                        fontSize: 60.0,
                        fontFamily: "Billabong"
                    ),
                  ),
                ),
                flex: 20,
              ),
              Expanded(child: Container(), flex: 20,),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, Login.id);
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  color: Colors.blue,

                ),
                flex: 8,
              ),
              Expanded(child: Container(), flex: 7,),
              Expanded(
                child: OutlinedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, SignUp.id);
                  },
                  child: Text("Sign Up"),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      side: BorderSide(
                        color: Colors.blue,

                      )
                  ),
                ),
                flex: 8,
              ),
              Expanded(child: Container(), flex: 25,)
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}

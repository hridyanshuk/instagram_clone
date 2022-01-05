//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/homescreen.dart';
import 'package:instagram_clone/Screens/nav_bar_screen.dart';
import 'package:instagram_clone/authorisation/choices.dart';
import 'package:instagram_clone/authorisation/login.dart';
import 'package:instagram_clone/authorisation/signup.dart';
import 'package:instagram_clone/routes.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      routes: {
        Login.id: (context) => Login(),
        SignUp.id: (context) => SignUp(),
        Choices.id: (context) => Choices(),
        NavBarScreen.id: (context) => NavBarScreen(),

      },
      home: Choices(),
    );
  }
}

//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/activity_page.dart';
import 'package:instagram_clone/Screens/add_post.dart';
import 'package:instagram_clone/Screens/explore.dart';
import 'package:instagram_clone/Screens/homescreen.dart';
import 'package:instagram_clone/Screens/profile_page.dart';
import 'package:instagram_clone/constants.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);
  static const id="/scr/navBarScr";
  @override
  _NavBarScreenState createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int current=0;

  final pages=<Widget>[
    HomeScreen(),
    Explore(),
    AddPost(),
    ActivityPage(),
    ProfilePage(
      username: user1,
      bio: bio1,
      nofFollowers: 74,
      nofFollowing: 85,
      nofPosts: 0,
    ),
  ];

  final homeIconStates=[
    Icons.home_outlined,
    Icons.home
  ];
  int homeIconState=1;

  final likeIconStates=[
    AssetImage("assets/imageIcons/likeIconFilledBlack.png"),
    AssetImage("assets/imageIcons/likeIcon.png")
  ];
  int likeIconState=1;

  final profileIconStates=[
    Icons.person_outline,
    Icons.person
  ];
  int profileIconState=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 25.0,


        items: [

          BottomNavigationBarItem(icon: Icon(homeIconStates[homeIconState], color: Colors.black,), title: Text("Home", style: TextStyle(color: Colors.transparent),)),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined, color: Colors.black,), title: Text("Explore", style: TextStyle(color: Colors.transparent),)),
          BottomNavigationBarItem(icon: Icon(Icons.add, color: Colors.black,), title: Text("Add", style: TextStyle(color: Colors.transparent),)),
          BottomNavigationBarItem(icon: ImageIcon(likeIconStates[likeIconState],color: Colors.black,size: 22.0,), title: Text("Activity", style: TextStyle(color: Colors.transparent),),),
          //BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/Testing/ProfileImages/dp1.jpg"),color: null,), title: Text("Profile", style: TextStyle(color: Colors.transparent),),)
          BottomNavigationBarItem(icon: Icon(profileIconStates[profileIconState], color: Colors.black,), title: Text("Profile", style: TextStyle(color: Colors.transparent),),)

        ],
        onTap: (index){
          setState(() {
            current=index;
            if(index==0)
              {
                homeIconState=1;
              }

            else
              {
                homeIconState=0;

              }
            if(index==3)
            {
              likeIconState=0;
            }
            else
            {
              likeIconState = 1;
            }

            if(index==4)
            {
              profileIconState=1;
            }
            else
            {
              profileIconState = 0;
            }

          });
        },
      ),
    );
  }
}

//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/widgets/display_pic.dart';
import 'package:instagram_clone/widgets/posts.dart';
//import 'package:instagram_clone/widgets/user.dart';
//FOR TESTING ONLY "https://instagram.fdel62-1.fna.fbcdn.net/v/t51.2885-19/s320x320/193668185_146205800881196_7407904601743405100_n.jpg?_nc_ht=instagram.fdel62-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=4t15mXyzkRgAX_543YS&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT98Q_aRd2Kt28b_HIWYuytekyT2VQuYh6eFL2febx_m5A&oe=61D27E70&_nc_sid=7bff83"


const imgUrl1="https://instagram.fdel62-1.fna.fbcdn.net/v/t51.2885-19/s320x320/193668185_146205800881196_7407904601743405100_n.jpg?_nc_ht=instagram.fdel62-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=4t15mXyzkRgAX_543YS&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT98Q_aRd2Kt28b_HIWYuytekyT2VQuYh6eFL2febx_m5A&oe=61D27E70&_nc_sid=7bff83";


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const id="/scr/homeScr";



  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const test1="assets/Testing/ProfileImages/dp1.jpg";
  static const test2="assets/Testing/ProfileImages/dp2.jpeg";
  static const test3="assets/Testing/ProfileImages/dp3.jpeg";
  static const test4="assets/Testing/ProfileImages/dp4.jpeg";
  static const test5="assets/Testing/ProfileImages/dp5.jpeg";
  static const test6="assets/Testing/ProfileImages/dp6.jpeg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,


      appBar: AppBar(
        toolbarHeight: 65.0,
        backgroundColor: Colors.white,
        elevation: 1.0,
        leading: Icon(
          Icons.camera_alt_outlined,
          color: Colors.black,
          size: 40.0,

        ),
        centerTitle: true,
        title:
            Text(
              "Instagram",
              style: TextStyle(
                fontFamily: "Billabong",
                fontSize: 45.0,
                color: Colors.black,
              ),
        ),
        actions: [
          ImageIcon(AssetImage("assets/imageIcons/dmIcon.png"), color: Colors.black, size:32.0)
        ],
      ),

      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DisplayPic(profileImg: "assets/Testing/ProfileImages/dp1.jpg", networkImg: false, read:true),
                DisplayPic(profileImg: "assets/Testing/ProfileImages/dp2.jpeg", networkImg: false, read:true),
                DisplayPic(profileImg: "assets/Testing/ProfileImages/dp3.jpeg", networkImg: false, read:true),
                DisplayPic(profileImg: "assets/Testing/ProfileImages/dp4.jpeg", networkImg: false, read:false),
                DisplayPic(profileImg: "assets/Testing/ProfileImages/dp5.jpeg", networkImg: false, read:false),
                DisplayPic(profileImg: "assets/Testing/ProfileImages/dp6.jpeg", networkImg: false, read:false),
              ],
            ),
          ),
          Posts(read: true, profileImg: test1, networkImg: false, imageURL: test3, username: "User 1", caption: "If you're looking for random paragraphs, you've come to the right place.",),
          Posts(read: true, profileImg: test2, networkImg: false, imageURL: test2, username: "User 2", caption:"Generating random paragraphs can be an excellent way"),
          Posts(read: false, profileImg: test4, networkImg: false, imageURL: test2, username: "User 3", caption:"The writer can use the paragraph as the first one of a short story"),
          Posts(read: true, profileImg: test3, networkImg: false, imageURL: test3, username: "User 3", caption:"Another writing challenge can be to take the individual"),
          Posts(read: false, profileImg: test2, networkImg: false, imageURL: test3, username: "User 4", caption: "It's not only writers who can benefit from this free online tool. If you're a programmer",),
          Posts(read: false, profileImg: test3, networkImg: false, imageURL: test4, username: "User 5", caption: "If you do find this paragraph tool useful, please do us a favor and let us know how you're using it. It's ",),
          Posts(read: true, profileImg: test6, networkImg: false, imageURL: test5, username: "User 5", caption: "Yes. We're always interested in improving this generator and one of the best",),

        ],
      )
    );
  }
}


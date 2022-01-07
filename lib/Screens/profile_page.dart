//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';
import 'package:instagram_clone/widgets/display_pic.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
    required this.nofPosts,
    required this.nofFollowers,
    required this.nofFollowing,
    required this.username,
    required this.bio
  }) : super(key: key);
  // final int nofPosts=0;
  // final int nofFollowers=0;
  // final int nofFollowing=0;
  // final String username=user1;
  // final String bio=bio1;
  final int nofPosts;
  final int nofFollowers;
  final int nofFollowing;
  final String username;
  final String bio;
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              DisplayPicture(imageLink: img1, radius: (MediaQuery.of(context).size.width)/8,),
              Container(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${widget.nofPosts}", style: TextStyle(fontSize: 20.0),),
                  Text("Posts"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${widget.nofFollowers}", style: TextStyle(fontSize: 20.0),),
                  Text("Followers"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${widget.nofFollowing}", style: TextStyle(fontSize: 20.0),),
                  Text("Following"),
                ],
              )
            ],
        ),
          ),
        Row(
          children: [
            Expanded(child: Container(), flex: 1,),
            Expanded(
              flex: 20,
              child: TextButton(
                onPressed: (){},
                child: Text("Edit Profile", style: TextStyle(color: Colors.black),),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  side: BorderSide(
                    color: Colors.grey.shade400
                  ),
                ),
              ),
            ),
            Expanded(child: Container(), flex: 1,),
          ],
        ),

      ]
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            widget.username,
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
}

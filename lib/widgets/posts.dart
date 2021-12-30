//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/display_pic.dart';
//import 'package:instagram_clone/widgets/user.dart';


/*
class Post extends StatelessWidget {

  const Post({
    Key? key,
    required this.user,
    required this.storyRead,
    required this.postId,
  }) : super(key: key);
  final User user;
  final bool storyRead;
  final int postId;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            user.username
          ),
          subtitle: Text(user.posts[postId].location),
          leading: DisplayPic(
            read: storyRead,
            networkImg: user.networkImg,
            profileImg: user.profileImg,
          ),
        ),
        Image(image: user.posts[postId].returnSemanticLabel()),
        Text(user.posts[postId].caption)

      ],
    );
  }
}
*/

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
    required this.read,
    required this.profileImg,
    required this.networkImg,
    required this.imageURL,
    required this.username,
    required this.caption,
  }) : super(key: key);
  final String caption;
  final String profileImg;
  final bool networkImg;
  final bool read;
  final String imageURL;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black, width: 0.1),
              bottom: BorderSide(color: Colors.black, width: 0.1),
            )
          ),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 0.0),
            leading: DisplayPic(
              read: read,
              profileImg: profileImg,
              networkImg: networkImg,
            ),
            title: Text(username),

          ),
        ),
        Image(image: AssetImage(imageURL)),
        SizedBox(
          height: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ImageIcon(AssetImage("assets/imageIcons/heart.png"), size: 30.0,),
              ImageIcon(AssetImage("assets/imageIcons/comment.png"), size: 35.0,),
              ImageIcon(AssetImage("assets/imageIcons/directMsg.png"), size: 35.0,)
            ],
          ),
        ),
        Text(username+" "+caption)
      ],
    );
  }
}
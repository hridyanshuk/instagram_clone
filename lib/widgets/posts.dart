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
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ImageIcon(AssetImage("assets/imageIcons/likeIcon.png"), size: 27.0,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ImageIcon(AssetImage("assets/imageIcons/commentIcon.png"), size: 29.0,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ImageIcon(AssetImage("assets/imageIcons/dmIcon.png"), size: 27.0,),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black
              ),
              children: [
                TextSpan(text:username+" ", style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text:caption, )
              ]
            ),
          ),
        )
      ],
    );
  }
}
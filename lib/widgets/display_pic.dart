//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

/*
class UnreadStory extends StatelessWidget {
  const UnreadStory({
    Key? key,
    required this.profileImg,
    required this.networkImg,
    //required this.storyRoute
  }) : super(key: key);
  final String profileImg;
  final bool networkImg;
  @override
  Widget build(BuildContext context) {
    if(networkImg)
    {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
            backgroundImage: AssetImage("assets/unreadStory.jpg"),
            radius: 33.0,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(profileImg),
                  radius: 28.0,
                )
            )
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 6.0),
      child: CircleAvatar(
          backgroundImage: AssetImage("assets/unreadStory.jpg"),
          radius: 32.0,
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.0,
              child: CircleAvatar(
                backgroundImage: AssetImage(profileImg),
                radius: 28.0,
              )
          )
      ),
    );
  }
}

*/
class DisplayPic extends StatelessWidget {
  const DisplayPic({
    Key? key,
    required this.read,
    required this.networkImg,
    required this.profileImg
  }) : super(key: key);
  final String profileImg;
  final bool networkImg;
  final bool read;
  @override
  Widget build(BuildContext context) {
    if(read==false)
    {
      if(networkImg)
      {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
              backgroundImage: AssetImage("assets/unreadStory.jpg"),
              radius: 33.0,
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profileImg),
                    radius: 28.0,
                  )
              )
          ),
        );
      }
      return Padding(
        padding: const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 6.0),
        child: CircleAvatar(
            backgroundImage: AssetImage("assets/unreadStory.jpg"),
            radius: 32.0,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: CircleAvatar(
                  backgroundImage: AssetImage(profileImg),
                  radius: 28.0,
                )
            )
        ),
      );
    }
    if(networkImg)
    {
      return Padding(
        padding: const EdgeInsets.all(4.0),
        child: CircleAvatar(
          //backgroundImage: AssetImage("assets/unreadStory.jpg"),
            backgroundColor: Colors.grey,
            radius: 33.0,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(profileImg),
                  radius: 28.0,
                )
            )
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(6.0, 8.0, 6.0, 6.0),
      child: CircleAvatar(
        //backgroundImage: AssetImage("assets/unreadStory.jpg"),
          backgroundColor: Colors.grey,
          radius: 32.0,
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30.0,
              child: CircleAvatar(
                backgroundImage: AssetImage(profileImg),
                radius: 28.0,
              )
          )
      ),
    );
  }
}

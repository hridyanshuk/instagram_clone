//ignore_for_file: prefer_const_constructors
//ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';
import 'package:instagram_clone/widgets/post_thumbnails.dart';
class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: SizedBox(
            width: (MediaQuery.of(context).size.width)*19/20,
            height: 45.0,
            child: TextField(


              enableInteractiveSelection: true,

              decoration: InputDecoration(
                fillColor: Color(0xFFE9E9EA),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                      color: Color(0xFFE9E9EA)
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                      color: Color(0xFFE9E9EA)
                  ),
                ),
                //focusColor: Color(0xff9d9fa1),
                labelText: "Search",
                prefixIcon: Icon(Icons.search),
                floatingLabelBehavior :FloatingLabelBehavior.never,
                filled: true,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(

            children: [

              Expanded(

                child: GridView.count(
                  childAspectRatio: 1,// width/height
                  crossAxisCount: 3,
                  mainAxisSpacing: 2.0,
                  crossAxisSpacing: 2.0,
                  children: [
                    PostThumbnail(postLink: img1),
                    PostThumbnail(postLink: img2),
                    PostThumbnail(postLink: img3),
                    PostThumbnail(postLink: img4),
                    PostThumbnail(postLink: img5),
                    PostThumbnail(postLink: img6),
                    PostThumbnail(postLink: img5),
                    PostThumbnail(postLink: img4),
                    PostThumbnail(postLink: img3),
                    PostThumbnail(postLink: img2),
                    PostThumbnail(postLink: img1),
                    PostThumbnail(postLink: img2),
                    PostThumbnail(postLink: img3),
                    PostThumbnail(postLink: img2),
                    PostThumbnail(postLink: img5),
                    PostThumbnail(postLink: img6),

                  ],

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class PostThumbnail extends StatelessWidget {
  const PostThumbnail({
    Key? key,
    required this.postLink,
  }) : super(key: key);
  final String postLink;
  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage(postLink),
        fit: BoxFit.cover);
  }
}

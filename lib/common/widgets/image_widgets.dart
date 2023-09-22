import 'package:flutter/cupertino.dart';

Widget appImage(
    {String image = "assets/icons/user.png",
    double width = 16,
    double height = 16}) {
  return Image.asset(
    image.isEmpty ? "assets/icons/user.png" : image,
    width: width,
    height: height,
  );
}

import 'package:flutter/material.dart';
import 'package:new_app/common/widgets/text_widgets.dart';
import '../utils/color.dart';


/*
   preferredSize widget gives you a height or space from the appbar down words and we can put child in the given space
 */

AppBar buildAppbar({String title=""}) {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey[400],
        height: 0.5,
      ),
    ),
    title: text16Normal(text: title, color: AppColors.primaryText),
  );
}
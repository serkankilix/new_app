import 'package:flutter/material.dart';
import 'package:new_app/common/widgets/text_widgets.dart';


import '../utils/color.dart';
import 'app_bar.dart';
import 'app_shadow.dart';

Widget appButton({
  String buttonName = "",
  double width = 325,
  double height = 50,
  bool isLogin = true,
  BuildContext? context,
  void Function()? func
}) {
  return GestureDetector(
    onTap:func,

    child: Container(
      width: width,
      height: height,
      //isLogin true then send primary color else send white color
      decoration: appBoxShadow(
        color: isLogin ? AppColors.primaryElement : Colors.white,
        border: Border.all(color: AppColors.primarySecondaryElementText),
      ),
      child: Center(
        child: text16Normal(
            text: buttonName,
            color:
                isLogin ? AppColors.primaryBackground : AppColors.primaryText),
      ),
    ),
  );
}

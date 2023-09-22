import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/color.dart';

Widget text24Normal({String text = "", Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.normal),
  );
}

Widget text16Normal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.normal),
  );
}

Widget text14Normal(
    {String text = "", Color color = AppColors.primaryThirdElementText}) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.normal),
  );
}

Widget textUnderLine() {
  return GestureDetector(
    onTap: () {},
    child: const Text(
      "Forgot password?",
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: AppColors.primaryText,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}

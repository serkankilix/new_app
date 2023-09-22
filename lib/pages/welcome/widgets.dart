import 'package:flutter/material.dart';
import '../../common/widgets/app_shadow.dart';
import '../../common/widgets/text_widgets.dart';
import '../sing_in/sing_in.dart';

Widget appOnboardingPage(PageController controller,
    {String imagePath = "assets/images/reading.png",
    String title = "",
    String subTitle = "",
    index = 0,
    required BuildContext context}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
          margin: const EdgeInsets.only(top: 15),
          child: text24Normal(text: title)),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller, context)
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const SingIn(),
          ),
        );
      }
    },
    child: Container(
      width: 325,
      height: 50,
      margin: const EdgeInsets.only(
        top: 100,
        left: 25,
        right: 25,
      ),
      decoration: appBoxShadow(),
      child: Center(child: text16Normal(text: "next", color: Colors.white)),
    ),
  );
}

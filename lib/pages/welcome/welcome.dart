import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_app/pages/welcome/widgets.dart';
import '../../common/utils/color.dart';
import '../notifier/welcome_notifier.dart';

class Welcome extends ConsumerWidget{
  Welcome({Key? key}) : super(key: key);

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final index = ref.watch(indexDotProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
              margin: const EdgeInsets.only(top: 30),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  //showing our three welcome pages
                  PageView(
                    onPageChanged: (value){
                      ref.read(indexDotProvider.notifier).changeIndex(value);
                    },
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      //first page
                      appOnboardingPage(_controller,
                          imagePath: "assets/images/reading.png",
                          title: "First See Learning",
                          subTitle:
                              "Forget about the paper, now learning all in one place",
                          index: 1,context : context),
                      //second page
                      appOnboardingPage(_controller,
                          imagePath: "assets/images/man.png",
                          title: "Connect With Everyone",
                          subTitle:
                              "Always keep in touch with your tutor and friend. Let's get conected.",
                          index: 2,context : context),
                      appOnboardingPage(_controller,
                          imagePath: "assets/images/boy.png",
                          title: "Always Facinated Learning",
                          subTitle:
                              "Anywhere, anytime. The time is at your discretion. So Study wherever you can.",
                          index: 3, context : context),
                    ],
                  ),
                  //for showing dots indicator
                  Positioned(
                    bottom: 50,
                    child: DotsIndicator(
                      position: index,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator:  DotsDecorator(
                        color: AppColors.primaryElement,
                        activeColor: AppColors.primaryElement,
                        size: const Size.square(8.0),
                        activeSize: const Size(24.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

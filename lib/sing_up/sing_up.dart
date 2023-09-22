import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_app/sing_up/sing_up_controller.dart';
import '../common/global_loader/global_loader.dart';
import '../common/utils/color.dart';
import '../common/widgets/app_bar.dart';
import '../common/widgets/app_textfields.dart';
import '../common/widgets/button_widgets.dart';
import '../common/widgets/text_widgets.dart';
import 'notifier/register_notifier.dart';

class SingUp extends ConsumerStatefulWidget {
  const SingUp({super.key});

  @override
  ConsumerState<SingUp> createState() => _SingUpState();
}

class _SingUpState extends ConsumerState<SingUp> {
  late SignUpController _controller;

  @override
  void initState() {

    _controller = SignUpController(ref: ref);

    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final regProvider = ref.watch(registerNotifierProvider);
    final loader= ref.watch(appLoaderProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(title: "Sing Up"),
            backgroundColor: Colors.white,
            body: loader==false?SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  //more login options message
                  Center(
                      child: text14Normal(
                          text: "Enter your details below & free sing up")),
                  const SizedBox(height: 10),
                  //user name text box
                  appTextField(
                    text: "User name",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your user name",
                    func: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onUserNameChange(value),
                  ),
                  //email text box
                  appTextField(
                    text: "E-mail",
                    iconName: "assets/icons/user.png",
                    hintText: "Enter your e-mail address",
                    func: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onUserEmailChange(value),
                  ),
                  //password text box
                  appTextField(
                    text: "Password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter your password",
                    obscureText: true,
                    func: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onUserPasswordChange(value),
                  ),
                  //confirm password text box
                  appTextField(
                    text: "Confirm your password",
                    iconName: "assets/icons/lock.png",
                    hintText: "Enter confirm password",
                    obscureText: true,
                    func: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .onUserRePasswordChange(value),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //text message
                  Container(
                    margin: const EdgeInsets.only(left: 37),
                    child: text14Normal(
                        text:
                            "By creating an account you are agreeing with conditions"),
                  ),
                  const SizedBox(height: 100),

                  //app register button
                  Center(
                    child: appButton(
                      buttonName: "Register",
                      isLogin: true,
                      context: context,
                      func: () => _controller.handleSignUp(),
                    ),
                  ),
                ],
              ),
            ):const Center(child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
              color: AppColors.primaryElement,
            ),),),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:new_app/pages/sing_in/widgets/sing_in_widgets.dart';
import '../../common/widgets/app_bar.dart';
import '../../common/widgets/app_textfields.dart';
import '../../common/widgets/button_widgets.dart';
import '../../common/widgets/text_widgets.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
            appBar: buildAppbar(title:"Log In"),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //top login buttons
                  thirdPartyLogin(),
                  //more login options message
                  Center(
                      child: text14Normal(
                          text: "Or use your email account to login")),
                  const SizedBox(height: 50),
                  //email text box
                  appTextField(
                      text: "E-mail",
                      iconName: "assets/icons/user.png",
                      hintText: "Enter your e-mail address"),
                  //password text box
                  appTextField(
                      text: "Password",
                      iconName: "assets/icons/lock.png",
                      hintText: "Enter your password",
                      obscureText: true),
                  const SizedBox(height: 10),
                  //forgot text
                  Container(
                    margin: const EdgeInsets.only(left: 35),
                    child: textUnderLine(),
                  ),
                  const SizedBox(height: 100),
                  //app login button
                  Center(
                    child: appButton(
                      buttonName: "Log in",
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //app register button
                  Center(
                    child: appButton(
                      buttonName: "Register",
                      isLogin: false,
                      context: context,
                      func: (){
                        Navigator.pushNamed(context, "/register");
                      },
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

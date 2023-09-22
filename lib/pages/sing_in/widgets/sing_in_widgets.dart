import 'package:flutter/material.dart';



Widget thirdPartyLogin() {
  return Container(
    margin: const EdgeInsets.only(left: 80.0, right: 80, top: 40, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _loginButton("assets/icons/google.png"),
        _loginButton("assets/icons/apple.png"),
        _loginButton("assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget _loginButton(String image) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(image),
    ),
  );
}



import 'package:flutter/material.dart';
import 'app_shadow.dart';
import 'image_widgets.dart';
import 'text_widgets.dart';

Widget appTextField(
    {String text = "",
      String iconName = "",
      String hintText = "Type in your info",
      bool obscureText = false,
      void Function(String value)? func,
    }) {
  return Container(
    padding: const EdgeInsets.only(left: 35, top: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        const SizedBox(height: 5,),
        Container(
          width: 325,
          height: 50,
          decoration: appBoxDecorationTextField(),
          //row contains icon and text-field
          child: Row(
            children: [
              //for showing icons
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: appImage(image: iconName),
              ),
              //our text field
              SizedBox(
                width: 280,
                height: 50,
                child: TextField(
                  onChanged: (value)=>func!(value),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: const TextStyle(fontSize: 13.9),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),

                    //default border without any input

                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),

                    //focused border is with input

                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),

                    //disabled border is with input

                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  maxLines: 1,
                  autocorrect: false,
                  //by default false
                  obscureText: obscureText,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
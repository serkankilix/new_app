import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


//positional optional parameter
toastInfo({String msg = ""}) {
  return Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    fontSize: 14,
    timeInSecForIosWeb: 2,
  );
}

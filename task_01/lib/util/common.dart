import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CommonFunc {
  void showToastMsg(msg) {
    Fluttertoast.showToast(
        msg: msg,
        fontSize: 16.0,
        textColor: Colors.white,
        backgroundColor: Colors.black54,
        timeInSecForIosWeb: 4);
  }
}

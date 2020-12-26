import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SnackBarUtil {
  static void showSnackbar(BuildContext context, String text) {
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(text),
    ));
  }

  static void successSnackBar(BuildContext context) {
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Success"),
    ));
  }

  static void errorSnackBar(BuildContext context) {
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Error. Please try again"),
    ));
  }
}

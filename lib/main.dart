import 'package:actual/common/component/custom_text_form_field.dart';
import 'package:actual/user/view/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget{
  const _App({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NoteSans'
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: LoginScreen()
      ),
    );
  }
}
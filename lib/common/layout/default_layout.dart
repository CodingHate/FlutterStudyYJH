import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget{
  final Widget child;
  const DefaultLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 로그인 되었는지 상태를 받아옴
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
    );
  }
}
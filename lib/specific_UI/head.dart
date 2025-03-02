import 'package:flutter/material.dart';

class Head1 extends StatelessWidget {
  final bool check;
  const Head1({super.key, required this.check});
  String? returnCheck(c) {
    if (c) {
      return "assets/images/background.png";
    } else {
      return "assets/images/background2.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(returnCheck(check)!),
    );
  }
}

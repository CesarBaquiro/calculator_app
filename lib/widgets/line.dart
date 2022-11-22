import 'package:flutter/material.dart';

class LineSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 3,
        color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
        margin: EdgeInsets.symmetric(vertical: 20));
  }
}

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color bgColor;
  final bool big;
  final String text;
  //final Icon Icons;

  final Function onPressed;

  Button({
    Key? key,
    bgColor,
    this.big = false,
    // required this.Icons,
    required this.text,
    required this.onPressed,
  })  : bgColor = bgColor ?? const Color(0xff333333),
        super(key: key) {}

  @override
  Widget build(BuildContext context) {
    // Button
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: bgColor,
      primary: Colors.white,
      shape: const StadiumBorder(),
    );

    return Container(
      margin:
          const EdgeInsets.only(bottom: 10, right: 5, left: 5), //Margin size
      child: TextButton(
        style: buttonStyle,
        child: Container(
          width: big ? 150 : 85,
          height: 85, //Radius

          child: Center(
              child: Text(
            text,
            style: const TextStyle(fontSize: 38, fontWeight: FontWeight.w400),
          )),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class BlueButtom extends StatelessWidget {
  String text;
  Function onPressed;
  Color color;

  BlueButtom(this.text, {@required this.onPressed, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );;
  }
}

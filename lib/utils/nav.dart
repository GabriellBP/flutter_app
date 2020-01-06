import 'package:flutter/material.dart';

Future push(BuildContext context, Widget page) {
  return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => page));
}

bool pop(BuildContext context, elements) {
  return Navigator.pop(context, elements);
}
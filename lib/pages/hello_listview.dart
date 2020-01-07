import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
          title: new Text("ListView")
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      itemExtent: 300,
      children: <Widget>[
        _img("assets/images/dog1.png"),
        _img("assets/images/dog2.png"),
        _img("assets/images/dog3.png"),
        _img("assets/images/dog4.png"),
        _img("assets/images/dog5.png"),
      ],
    );
  }

  _img(String image) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}

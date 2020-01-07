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
    final List<Widget> imgs= [
      _img("assets/images/dog1.png"),
      _img("assets/images/dog2.png"),
      _img("assets/images/dog3.png"),
      _img("assets/images/dog4.png"),
      _img("assets/images/dog5.png"),
    ];

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return imgs[index];
      },
      itemExtent: 300,
      itemCount: imgs.length,
    );
  }

  _img(String image) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}

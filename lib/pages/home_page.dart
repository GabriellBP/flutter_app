import 'package:flutter/material.dart';

import 'package:flutter_app/pages/hello_page1.dart';
import 'package:flutter_app/pages/hello_page2.dart';
import 'package:flutter_app/pages/hello_page3.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          _text(),
          _pageView(),
          _buttons(context),
        ]
      ),
    );
  }

  _pageView() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 300,
        child: PageView(
          children: <Widget>[
            _img("assets/images/dog1.png"),
            _img("assets/images/dog2.png"),
            _img("assets/images/dog3.png"),
            _img("assets/images/dog4.png"),
            _img("assets/images/dog5.png"),
          ],
        ),
      );
  }

  Column _buttons(context) {
    return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button(context, "ListView", () => _onClickNavigator(context, HelloPage1())),
                _button(context, "Page 2", () {
                  _onClickNavigator(context, HelloPage2());
                }),
                _button(context, "Page 3", () => _onClickNavigator(context, HelloPage3())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button(context, "Snack", _onClickSnack),
                _button(context, "Dialog", _onClickDialog),
                _button(context, "Toast", _onClickToast),
              ],
            ),
          ],
        );
  }

  _onClickNavigator(context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  _onClickSnack() {
  }

  _onClickDialog() {
  }

  _onClickToast() {
  }

  _button(BuildContext context, String text, Function onPressed){
    return RaisedButton(
      color: Colors.red,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
    );
  }

  _img(String image) {
//    return Image.network("https://thehappypuppysite.com/wp-content/uploads/2017/10/Cute-Dog-Names-HP-long.jpg");
    return Image.asset(
        image,
        fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
        "Hello World",
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          decorationStyle: TextDecorationStyle.wavy,

        ),
      );
  }
}
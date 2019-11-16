import 'package:flutter/material.dart';

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
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          _text(),
          _pageView(),
          _buttons()
        ]
      )
    );
  }

  _pageView() {
    return Container(
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

  Column _buttons() {
    return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("ListView"),
                _button("Page 2"),
                _button("Page 3"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("Snack"),
                _button("Dialog"),
                _button("Toast"),
              ],
            ),
          ],
        );
  }

  _button(String text){
    return RaisedButton(
      onPressed: _onClickOk,
      color: Colors.red,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
      ),
    );
  }

  _onClickOk() {
    print("Button pressed");
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
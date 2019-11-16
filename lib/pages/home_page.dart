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
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: _button(),
      )
    );
  }

  _button(){
    return RaisedButton(
      onPressed: _onClickOk,
      color: Colors.red,
      child: Text(
        "OK",
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

  _img() {
//    return Image.network("https://thehappypuppysite.com/wp-content/uploads/2017/10/Cute-Dog-Names-HP-long.jpg");
    return Image.asset(
        "assets/images/dog3.png",
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
import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Page 2"
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          "Voltar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25
          ),
        ),
        onPressed: () => _onPressed(context),
      ),
    );
  }

  _onPressed(context) {
    Navigator.pop(context);
  }
}

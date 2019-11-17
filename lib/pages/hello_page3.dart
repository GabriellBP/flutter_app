import 'package:flutter/material.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Page 3"
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: Colors.red,
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
    Navigator.pop(context, "Page 3");
  }
}

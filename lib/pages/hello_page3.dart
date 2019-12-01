import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/blue_button.dart';

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
      child: BlueButtom(
        "Voltar",
        onPressed: () => _onPressed(context),
        color: Colors.blue,
      ),
    );
  }

  _onPressed(context) {
    Navigator.pop(context, "Page 3");
  }
}

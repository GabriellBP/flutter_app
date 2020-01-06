import 'package:flutter/material.dart';
import 'package:flutter_app/utils/nav.dart';
import 'package:flutter_app/widgets/blue_button.dart';

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
      child: BlueButtom(
        "Voltar",
        onPressed: () => _onPressed(context),
        color: Colors.blue,
      ),
    );
  }

  _onPressed(context) {
    pop(context, "Page 2");
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/hello_listview.dart';

import 'package:flutter_app/pages/hello_page1.dart';
import 'package:flutter_app/pages/hello_page2.dart';
import 'package:flutter_app/pages/hello_page3.dart';
import 'package:flutter_app/utils/nav.dart';
import 'package:flutter_app/widgets/blue_button.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          children: <Widget>[
            _text(),
            _pageView(),
            _buttons(),
          ]),
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

  _buttons() {
    return Builder(
      builder: (context) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButtom("ListView",
                    onPressed: () =>
                        _onClickNavigator(context, HelloListView())),
                BlueButtom("Page 2", onPressed: () {
                  _onClickNavigator(context, HelloPage2());
                }),
                BlueButtom("Page 3",
                    onPressed: () => _onClickNavigator(context, HelloPage3())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButtom("Snack", onPressed: () => _onClickSnack(context)),
                BlueButtom("Dialog", onPressed: () => _onClickDialog(context)),
                BlueButtom("Toast", onPressed: _onClickToast),
              ],
            ),
          ],
        );
      },
    );
  }

  _onClickNavigator(context, Widget page) async {
    String s = await push(context, page);

    print(">> $s");
  }

  _onClickSnack(context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Olá Futter"),
      action: SnackBarAction(
        textColor: Colors.deepPurple,
        label: "Ok",
        onPressed: () {
          print("OK SnackBar");
        },
      ),
    ));
  }

  _onClickDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,  // clicks outside the alert don't close it
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,  // back button don't close the alert
            child: AlertDialog(
              title: Text("Flutter é muito legal!"),
              actions: <Widget>[
                FlatButton(
                  child: Text("Cancelar"),
                  onPressed: () {
                    pop(context, null);
                  },
                ),
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    print("OK Dialog!!!");
                    pop(context, null);
                  },
                ),
              ],
            ),
          );
        });
  }

  _onClickToast() {
    Fluttertoast.showToast(
        msg: "Flutter é muito legal!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 5,
        backgroundColor: Colors.greenAccent,
        textColor: Colors.white,
        fontSize: 16.0
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

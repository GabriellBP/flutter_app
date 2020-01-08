import 'package:flutter/material.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

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
    final List<Dog> dogs= [
      Dog("Jack Russel", "assets/images/dog1.png"),
      Dog("Labrador", "assets/images/dog2.png"),
      Dog("Pug", "assets/images/dog3.png"),
      Dog("Rottweiler", "assets/images/dog4.png"),
      Dog("Pastor", "assets/images/dog5.png"),
    ];

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: dogs.length,
      itemBuilder: (BuildContext context, int index) {
        Dog dog = dogs[index];
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _img(dog.foto),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(16)
                ),
                child: Text(
                  dog.nome,
                  style: TextStyle(fontSize: 26, color: Colors.white),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  _img(String image) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}

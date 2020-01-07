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

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        Dog dog = dogs[index];
        return _img(dog.foto);
      },
      itemExtent: 300,
      itemCount: dogs.length,
    );
  }

  _img(String image) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}

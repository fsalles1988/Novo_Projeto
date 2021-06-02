import 'package:flutter/material.dart';

class StackFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Stack')),
      body: incluiStack(),
    );
  }
}

Widget incluiStack() {
  return Stack(
    children: <Widget>[
      Container(
        width: 50,
        height: 50,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
          image: DecorationImage(
            image: AssetImage("build/imagens/brasil.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

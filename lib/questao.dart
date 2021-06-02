import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto; //Variável criada//

  Questao(this.texto); //Construtor criado//

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      width: 320,
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.yellowAccent, Colors.blue]),
        border: Border.all(
          width: 0.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(55.0),
        ),
      ),
      child: Center(
        child: Text(
          texto, //Dentro do Text vai o atributo texto//
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

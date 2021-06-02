import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 330,
      height: 65,
      child: Container(
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.red)),
          textColor: Colors.blueGrey,
          color: Colors.yellow[300],
          child: Text(
            texto,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          onPressed: quandoSelecionado,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao >= 16) {
      return 'Parabéns Você Acertou 100 %';
    } else if (pontuacao == 8) {
      return 'Voçê acertou 50%, Precisa estudar Mais';
    } else if (pontuacao <= 8) {
      return 'Acertou menos de 50%, reprovado(a)!';
    } else if (pontuacao >= 9 & 15) {
      return 'Acertou mais da metade,Isso é Bom!';
    } else {
      return 'tente novamente    ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    fraseResultado,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.green)),
          textColor: Colors.green[600],
          color: Colors.yellow,
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}

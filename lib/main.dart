import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      //Pergunta 1
      'texto': 'Qual é a capital do Acre?',
      'respostas': [
        {'texto': '(A) Rio Branco', 'pontuacao': 1},
        {'texto': '(B) Amapá', 'pontuacao': 0},
        {'texto': '(C) Washington', 'pontuacao': 0},
        {'texto': '(D) Palmas', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 2
      'texto': 'Qual é a capital do Distrito Federal?',
      'respostas': [
        {'texto': '(A) Goiás', 'pontuacao': 0},
        {'texto': '(B) Brasília', 'pontuacao': 1},
        {'texto': '(C) Bahia', 'pontuacao': 0},
        {'texto': '(D) Manaus', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 3
      'texto': 'Qual é a capital do Pará?',
      'respostas': [
        {'texto': '(A) Lima', 'pontuacao': 0},
        {'texto': '(B) Bogotá', 'pontuacao': 0},
        {'texto': '(C) Belém', 'pontuacao': 1},
        {'texto': '(D) Teresina', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 4
      'texto': '(João Pessoa) é a capital de qual estado?',
      'respostas': [
        {'texto': '(A) Paraiba', 'pontuacao': 1},
        {'texto': '(B) Espirito Santo', 'pontuacao': 0},
        {'texto': '(C) Amazonas', 'pontuacao': 0},
        {'texto': '(D) Nova York', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 5
      'texto': 'Qual a capital do Sergipe?',
      'respostas': [
        {'texto': '(A) Maceió', 'pontuacao': 0},
        {'texto': '(B) Curitiba', 'pontuacao': 0},
        {'texto': '(C) Aracaju', 'pontuacao': 1},
        {'texto': '(D) Campo Grande', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 6
      'texto': '(Natal) é a capital de qual Estado?',
      'respostas': [
        {'texto': '(A) São paulo', 'pontuacao': 0},
        {'texto': '(B) Paraná', 'pontuacao': 0},
        {'texto': '(C) Rio grande do Norte', 'pontuacao': 1},
        {'texto': '(D) Rio grande do Sul', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 7
      'texto': 'Teresina fica em qual região do País',
      'respostas': [
        {'texto': '(A) Sul', 'pontuacao': 0},
        {'texto': '(B) Nordeste', 'pontuacao': 0},
        {'texto': '(C) Centro-Oeste', 'pontuacao': 0},
        {'texto': '(D) Norte', 'pontuacao': 1},
      ],
    },
    {
      //Pergunta 8
      'texto': 'A Capital Cuiabá esta localizada em qual região?',
      'respostas': [
        {'texto': '(A) Centro Oeste', 'pontuacao': 1},
        {'texto': '(B) Sudeste', 'pontuacao': 0},
        {'texto': '(C) Norte', 'pontuacao': 0},
        {'texto': '(D)Sul', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 9
      'texto': 'Qual a capital do Ceará?',
      'respostas': [
        {'texto': '(A) Manaus', 'pontuacao': 0},
        {'texto': '(B) Fortaleza', 'pontuacao': 1},
        {'texto': '(C) Macapá', 'pontuacao': 0},
        {'texto': '(D) Boa Vista', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 10
      'texto': 'O estado de Tocantis cuja a capital é ...?',
      'respostas': [
        {'texto': '(A) São paulo', 'pontuacao': 0},
        {'texto': '(B) Rio de Janeiro', 'pontuacao': 0},
        {'texto': '(C) Palmas', 'pontuacao': 1},
        {'texto': '(D) Salvador', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 11
      'texto': 'Qual é a capital de Minas Gerais?',
      'respostas': [
        {'texto': '(A) São paulo', 'pontuacao': 0},
        {'texto': '(B) Belo Horizonte', 'pontuacao': 1},
        {'texto': '(C) Campo grande', 'pontuacao': 0},
        {'texto': '(D) Porto Alegre', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 12
      'texto': 'A capital referente à Santa Catarina é',
      'respostas': [
        {'texto': '(A) Aracaju', 'pontuacao': 0},
        {'texto': '(B) Macapá', 'pontuacao': 0},
        {'texto': '(C) Florianópolis', 'pontuacao': 1},
        {'texto': '(D) Joao Pessoa', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 13
      'texto': 'Qual é a capital do Paraná ?',
      'respostas': [
        {'texto': '(A) Recife', 'pontuacao': 0},
        {'texto': '(B) Curitiba', 'pontuacao': 1},
        {'texto': '(C) Vitória', 'pontuacao': 0},
        {'texto': '(D) Rio grande do Sul', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 14
      'texto': 'Boa vista é capital de qual Estado ',
      'respostas': [
        {'texto': '(A) Alagoas', 'pontuacao': 0},
        {'texto': '(B) Roraima', 'pontuacao': 1},
        {'texto': '(C) Sergipe', 'pontuacao': 0},
        {'texto': '(D) Rio grande do Sul', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 15
      'texto': 'Qual a capital de Alagoas',
      'respostas': [
        {'texto': '(A) Maceió', 'pontuacao': 1},
        {'texto': '(B) Porto Velho', 'pontuacao': 0},
        {'texto': '(C) São Luis', 'pontuacao': 0},
        {'texto': '(D) Natal', 'pontuacao': 0},
      ],
    },
    {
      //Pergunta 16
      'texto': 'Maranhão é um estado de qual região do País?',
      'respostas': [
        {'texto': '(A) Norte', 'pontuacao': 0},
        {'texto': '(B) Sul', 'pontuacao': 0},
        {'texto': '(C) Sudeste', 'pontuacao': 0},
        {'texto': '(D) Nordeste', 'pontuacao': 1},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Prova de Geografia-Mapa Político',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontSize: 21,
              decoration: TextDecoration.underline,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.blue, Colors.lightGreen])),
          ),
        ),
        body: Container(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              temPerguntaSelecionada
                  ? Questionario(
                      perguntas: _perguntas,
                      perguntaSelecionada: _perguntaSelecionada,
                      quandoResponder: _responder)
                  : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
            ],
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

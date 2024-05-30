import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual a sua Cor favorita?',
        'respostas': ['Preto', 'Azul', 'Branco', 'Rosa'],
      },
      {
        'texto': 'Qual o seu animal favorito?',
        'respostas': ['Leão', 'Aguia', 'Leopardo', 'Tubarão'],
      },
      {
        'texto': 'Qual a sua sobremesa favorita?',
        'respostas': ['Pudim', 'Chocolate', 'Bolo', 'Bombom'],
      }
    ];

    List<String> respostas =
        perguntas[_perguntaSelecionada]['respostas'] as List<String>;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'] as String),
            ...respostas.map((t) => Resposta(t, _responder)),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

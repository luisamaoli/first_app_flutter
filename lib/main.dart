import 'dart:async';

import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é o seu esporte favorito ?',
      'respostas': [
        {'texto': 'Natação', 'pontuacao': 10},
        {'texto': 'Bicicleta', 'pontuacao': 3},
        {'texto': 'Corrida', 'pontuacao': 5},
        {'texto': 'Surf', 'pontuacao': 1},
      ],
    },
    {
      'texto': 'Qual é o sua bebida favorita?',
      'respostas': [
        {'texto': 'Água com gás', 'pontuacao': 5},
        {'texto': 'Vinho', 'pontuacao': 10},
        {'texto': 'Cervejinha', 'pontuacao': 1},
        {'texto': 'Suco', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Qual é a cor do seu cabelo?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 5},
        {'texto': 'Castanho', 'pontuacao': 10},
        {'texto': 'Loiro', 'pontuacao': 1},
        {'texto': 'Ruivo', 'pontuacao': 3},
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
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            // ignore: prefer_const_constructors
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

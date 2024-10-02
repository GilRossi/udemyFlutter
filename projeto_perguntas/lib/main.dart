// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, annotate_overrides, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'pergunta': 'Qual a marca do seu carro?',
      'respostas': [
        {'texto': 'Hyundai', 'nota': 7},
        {'texto': 'Honda', 'nota': 5},
        {'texto': 'Volkswagem', 'nota': 6},
        {'texto': 'GM - Chevrolet', 'nota': 10},
      ],
    },
    {
      'pergunta': 'Qual o modelo do seu carro?',
      'respostas': [
        {'texto': 'Tucson', 'nota': 9},
        {'texto': 'Fit', 'nota': 8},
        {'texto': 'Fusca', 'nota': 7},
        {'texto': 'C10', 'nota': 10},
      ],
    },
    {
      'pergunta': 'Qual o ano do seu carro?',
      'respostas': [
        {'texto': '1900 > 2000', 'nota': 7},
        {'texto': '2000 > 2010', 'nota': 8},
        {'texto': '2010 > 2020', 'nota': 9},
        {'texto': '2020 >', 'nota': 10},
      ],
    },
    {
      'pergunta': 'Qual a cor do seu carro:',
      'respostas': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Branco', 'nota': 9},
        {'texto': 'Bege', 'nota': 8},
        {'texto': 'Prata', 'nota': 7},
      ],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Perguntas')),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoReponder: _responder,
              )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

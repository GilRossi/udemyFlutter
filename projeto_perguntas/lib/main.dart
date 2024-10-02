// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, anpontuacaote_overrides, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'pergunta': 'Qual a marca do seu carro?',
      'respostas': [
        {'texto': 'Hyundai', 'pontuacao': 7},
        {'texto': 'Honda', 'pontuacao': 5},
        {'texto': 'Volkswagem', 'pontuacao': 6},
        {'texto': 'GM - Chevrolet', 'pontuacao': 10},
      ],
    },
    {
      'pergunta': 'Qual o modelo do seu carro?',
      'respostas': [
        {'texto': 'Tucson', 'pontuacao': 9},
        {'texto': 'Fit', 'pontuacao': 8},
        {'texto': 'Fusca', 'pontuacao': 7},
        {'texto': 'C10', 'pontuacao': 10},
      ],
    },
    {
      'pergunta': 'Qual o ano do seu carro?',
      'respostas': [
        {'texto': '1900 > 2000', 'pontuacao': 7},
        {'texto': '2000 > 2010', 'pontuacao': 8},
        {'texto': '2010 > 2020', 'pontuacao': 9},
        {'texto': '2020 >', 'pontuacao': 10},
      ],
    },
    {
      'pergunta': 'Qual a cor do seu carro:',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Branco', 'pontuacao': 9},
        {'texto': 'Bege', 'pontuacao': 8},
        {'texto': 'Prata', 'pontuacao': 7},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
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

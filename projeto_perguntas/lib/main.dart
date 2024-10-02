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
      'pergunta': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 9},
        {'texto': 'Cavalo', 'pontuacao': 8},
        {'texto': 'Peixe', 'pontuacao': 7},
        {'texto': 'Anfibios', 'pontuacao': 6},
        {'texto': 'Pássaros', 'pontuacao': 5},
        {'texto': 'Roedores', 'pontuacao': 1},
      ],
    },
    {
      'pergunta': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Branco', 'pontuacao': 9},
        {'texto': 'Roxo', 'pontuacao': 8},
        {'texto': 'Azul', 'pontuacao': 7},
        {'texto': 'Vermelho', 'pontuacao': 6},
        {'texto': 'Rosa', 'pontuacao': 5},
        {'texto': 'Verde', 'pontuacao': 1},
      ],
    },
    {
      'pergunta': 'Qual a sua comida favorita?',
      'respostas': [
        {'texto': 'Strogonoff', 'pontuacao': 10},
        {'texto': 'Lasanha', 'pontuacao': 9},
        {'texto': 'Macarrão', 'pontuacao': 8},
        {'texto': 'Churrasco', 'pontuacao': 7},
        {'texto': 'Japonesa', 'pontuacao': 6},
        {'texto': 'Pizza', 'pontuacao': 5},
        {'texto': 'Vegana / Vegetariana', 'pontuacao': 1},
      ],
    },
    {
      'pergunta': 'Qual seu estilo de filme favorito?',
      'respostas': [
        {'texto': 'Guerra', 'pontuacao': 10},
        {'texto': 'Ação e Aventura', 'pontuacao': 9},
        {'texto': 'Comédia/Comédia Romatica', 'pontuacao': 8},
        {'texto': 'Terror/Suspense', 'pontuacao': 7},
        {'texto': 'Ficção Científica', 'pontuacao': 6},
        {'texto': 'Documentário', 'pontuacao': 5},
        {'texto': 'Novelas', 'pontuacao': 1},
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
            : Resultado(_pontuacaoTotal),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

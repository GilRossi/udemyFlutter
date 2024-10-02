// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 15) {
      return 'Você é antisocial!';
<<<<<<< HEAD
    } else if (pontuacao < 25) {
      return 'Quase sociavél!';
=======
    } else if (pontuacao < 30) {
      return 'Quase sociável!';
>>>>>>> dev
    } else if (pontuacao < 35) {
      return 'Sociável!';
    } else {
      return 'Você é simpático(a)!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          child: Text('Reiniciar?'),
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}

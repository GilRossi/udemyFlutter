import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quandoReponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoReponder,
  });
  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
            as List<Map<String, Object>>
        : [];
    return Column(
      children: <Widget>[
        Questao((perguntas[perguntaSelecionada]['pergunta'].toString())),
        ...respostas
            .map((resp) => Resposta(resp['texto'] as String, quandoReponder))
            .toList(),
      ],
    );
  }
}

/*
List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];
 Bons estudos!
*/

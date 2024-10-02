// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Obrigado!',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}

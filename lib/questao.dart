import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace, prefer_const_constructors
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        // ignore: prefer_const_constructors
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

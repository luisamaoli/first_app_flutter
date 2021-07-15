import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Não vai ter date.';
    } else if (pontuacao < 15) {
      return 'Talvez em um dia chuvoso podemos combinamos algo.';
    } else {
      return 'Par perfeito, alma gêmea, vai ter date.';
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          // ignore: prefer_const_constructors
          child: Text(
            fraseResultado,
            // ignore: prefer_const_constructors
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          // ignore: prefer_const_constructors
          child: Text('Reiniciar?'),
          onPressed: quandoReiniciarQuestionario,
          style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            onPrimary: Colors.white,
          ),
        )
      ],
    );
  }
}

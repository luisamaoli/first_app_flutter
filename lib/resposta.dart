import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace, prefer_const_constructors
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // ignore: prefer_const_constructors
        style: ElevatedButton.styleFrom(
          primary: Colors.pink.shade100,
          onPrimary: Colors.white,
        ),
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}

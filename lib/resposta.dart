import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelection;

  const Resposta(this.texto, this.onSelection, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
          disabledBackgroundColor: Colors.green.withOpacity(0.005),
          disabledForegroundColor: Colors.white,
        ),
        onPressed: onSelection,
        child: Text(texto),
      ),
    );
  }
}

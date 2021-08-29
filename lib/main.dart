
import 'package:calculadora_flutter/calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraSimples());
}

class CalculadoraSimples extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora",
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Calculadora(),
    );
  }
}

import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Calculadora")),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[            
            new Text(
              "Resultado da soma: $resultadoSoma",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),

            new Text(
              "Resultado da subtração: $resultadoSubtracao",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),

            new Text(
              "Resultado da divisão: $resultadoDivisao",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),

            new Text(
              "Resultado da multiplicação: $resultadoMultiplicacao",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),

            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),
            
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),
            
            new Padding(padding: const EdgeInsets.only(top: 20)),
            
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(                  

                  child: new Text(
                    "Calcular Operações",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: calcular,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  
  var valor1;
  var valor2;
  var resultadoSoma;
  var resultadoSubtracao;
  var resultadoDivisao;
  var resultadoMultiplicacao;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");
  
  void calcular() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultadoSoma = valor1 + valor2;
      resultadoSubtracao = valor1 - valor2;
      resultadoDivisao = valor1 / valor2;
      resultadoMultiplicacao = valor1 * valor2;
    });
  }
}

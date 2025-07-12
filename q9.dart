import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class q9 extends StatefulWidget {
  const q9({super.key});

  @override
  State<q9> createState() => _q9State();
}

class _q9State extends State<q9> {
  String display = "0";

  String expression = "";

  double calculateExpression(String expr) {
    GrammarParser p = GrammarParser();
    Expression exp = p.parse(expr);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    return eval;
  }

 
  Widget button(String token) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (token == "c") {
            display = "0";
            expression = "";
          } else if (token == "=") {
            final result = calculateExpression(expression);
            display = result.toString();
            expression = result.toString();
          } else {
          expression += token;
          display = expression;
        }
        });
      },
      child: Text(token, style: TextStyle(fontSize: 24)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Calculator")),

      body: Column(
        children: [
          
          Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.centerRight,
            width: double.infinity,
            child: Text(display, style: TextStyle(fontSize: 32)),
          ),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [button("7"), button("8"), button("9"), button("/")],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [button("4"), button("5"), button("6"), button("*")],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [button("1"), button("2"), button("3"), button("-")],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [button("0"), button("c"), button("="), button("+")],
            ),
          ),
        ],
      ),
    );
  }
}

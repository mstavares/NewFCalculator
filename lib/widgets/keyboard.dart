import 'package:f_calculator/models/calculator_model.dart';
import 'package:f_calculator/models/calculator_model.dart';
import 'package:f_calculator/widgets/button.dart';
import 'package:flutter/material.dart';


class Keyboard extends StatelessWidget {

  final CalculatorModel model;

  Keyboard(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "C",
                color: Colors.grey,
                onPressed: (symbol) => model.onClear(),
              ),
              Button(
                text: "<",
                color: Colors.grey,
                onPressed: (symbol) => model.onBackspace()
              ),
              Button(
                text: "last",
                color: Colors.orange,
                onPressed: (symbol) => model.onGetLastOperation(),
              ),
              Button(
                text: "/",
                color: Colors.orange,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "7",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "8",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "9",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "*",
                color: Colors.orange,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "4",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "5",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "6",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "-",
                color: Colors.orange,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "1",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "2",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "3",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "+",
                color: Colors.orange,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                text: "0",
                horizontalDouble: true,
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: ".",
                color: Colors.black54,
                onPressed: (symbol) => model.onReceiveSymbol(symbol),
              ),
              Button(
                text: "=",
                color: Colors.orange,
                onPressed: (symbol) => model.onEquals(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:f_calculator/models/calculator_model.dart';
import 'package:f_calculator/widgets/display.dart';
import 'package:f_calculator/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  final String title;

  CalculatorScreen({Key? key, required this.title}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorScreen> {
  final model = CalculatorModel.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          Display(model, content: model.display,),
          Keyboard(model),
        ],
      ),
    );
  }

}

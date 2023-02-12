import 'package:f_calculator/models/calculator_model.dart';
import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  final CalculatorModel model;
  String content;

  Display(this.model, {Key? key, required this.content}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

  @override
  Widget build(BuildContext context) {

    widget.model.observeDisplay((newContent) => {
      setState(() {
        widget.content = newContent;
      })
    });

    return Container(
      color: Colors.black54,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(2.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.all(4.0),
              child: Text(
                widget.content,
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void dispose(){
    super.dispose();
  }

}
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String _questionText;
  
  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _questionText,
        style: TextStyle(
          fontSize: 20, 
          color: Color.fromRGBO(0, 200, 0, 1),
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
    );
  }
}

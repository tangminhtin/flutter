import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerQuestion;
  
  Answer(this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Answer 1',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 16,
            color: Colors.white
          ),
        ),
        onPressed: _answerQuestion,
        color: Colors.blue,
      ),
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
    );
  }
}

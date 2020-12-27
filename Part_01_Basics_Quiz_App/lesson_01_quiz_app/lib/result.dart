import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhare {
    String resultText;
    if(resultScore >= 50) {
      resultText = 'You are awesome and innocent!';
    } else if(resultScore >= 30) {
      resultText = 'Pretty likeable!';
    } else if(resultScore >= 20) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhare,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.purple),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
            textColor: Colors.red,
            )
        ],
      ),
    );
  }
}

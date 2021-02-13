import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You're awesome, human";
    } else if (resultScore <= 16) {
      resultText = "Be calming down small small";
    } else if (resultScore <= 30) {
      resultText = "Guy, go for checkup, abeg";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              child: Text("Restart Quiz!", style: TextStyle(fontSize: 20)),
              textColor: Colors.green,
              onPressed: resetHandler)
        ],
      ),
    );
  }
}

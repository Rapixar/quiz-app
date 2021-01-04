import 'package:flutter/material.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("This is an app")),
      body: Column(
        children: [
          Text(questions[questionIndex]),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuestion),
          RaisedButton(child: Text("Answer 2"), onPressed: () => print("Answer Chosen")),
          RaisedButton(child: Text("Answer 3"), onPressed: () {print("Chosen");}),


        ]
      ),
    ),);
  }
}
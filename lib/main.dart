import 'package:flutter/material.dart';
import 'package:flutter_academind/answer.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // Creates a stateful widget which loads from the stateless widget below
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //The stateless widget
  var _questionIndex = 0;
  /* Note the underscore, defines a private property. Private properties are
  limited within the scope of the library or module in which it is used */
  var questions = [
    //The properties of the class, usually data
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
  void _answerQuestion() {
    //Methods of the class, normally functions
    setState(() {
      /* Set state helps to change the state of the widget using a logical
      reference and input data which is made possible by extending stateful
      widget */
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is an app"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}

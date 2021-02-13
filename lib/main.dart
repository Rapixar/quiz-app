import 'package:flutter/material.dart';
import 'package:flutter_academind/results.dart';
//import './answer.dart';

//import './question.dart';
import './quiz.dart';
import './results.dart';

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
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Yellow', 'Blue', 'Green']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Rabbit', 'Snake']
    },
    {
      'questionText': 'Who\'s your favorite person?',
      'answers': ['Raphael', 'Vivian', 'Naruto', 'Donny']
    },

    //The properties of the class, usually data
  ];
  var _questionIndex = 0;
  /* Note the underscore, defines a private property. Private properties are
  limited within the scope of the library or module in which it is used */

  void _answerQuestion() {
    setState(() {
      /* Set state helps to change the state of the widget using a logical
      reference and input data which is made possible by extending stateful
      widget */
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
    if (_questionIndex < _questions.length) {
      print(_questionIndex);
    }

    //Methods of the class, normally functions
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("This is an app"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion)
              : Result()),
    );
  }
}

import 'package:flutter/material.dart';
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
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 7},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 2},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 9},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Snake', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your favorite person?',
      'answers': [
        {'text': 'Raphael', 'score': 1},
        {'text': 'Vivian', 'score': 3},
        {'text': 'Naruto', 'score': 6},
        {'text': 'Donny', 'score': 9},
      ]
    },

    //The properties of the class, usually data
  ];
  var _questionIndex = 0;
  /* Note the underscore, defines a private property. Private properties are
  limited within the scope of the library or module in which it is used */
  var _finalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _finalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      /* Set state helps to change the state of the widget using a logical
      reference and input data which is made possible by extending stateful
      widget */

      _finalScore += score;
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
          : Result(_finalScore, _resetQuiz),
    ));
  }
}

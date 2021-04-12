import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:math_quiz/screens/run_quiz.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: RunQuiz(),
        ),
      ),
    );
  }
}

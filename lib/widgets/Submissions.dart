import 'package:flutter/material.dart';
import 'package:homepage/models/Question.dart';
import 'package:homepage/widgets/QuestionList.dart';

class Submissions extends StatelessWidget {
  final List<Question> _questions = new List<Question>();
  final List<Color> _colors = [Colors.lightBlue[500], Colors.lightBlue[900]];
  final List<double> _stops = [0.0, 0.9];
  var _solveButton = RaisedButton(
    onPressed: () {},
    color: Colors.blue[900],
    child: Text(
      'View Submission',
      style: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
    ),
  );
  @override
  Widget build(BuildContext context) {
    _questions.add(Question('Hard', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Easy', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Medium', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 4 * MediaQuery.of(context).size.width / 5,
      padding: EdgeInsets.all(0.0),
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: QuestionList(_questions, _solveButton),
        ),
      ),
    );
  }
}

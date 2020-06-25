import 'package:flutter/material.dart';
import 'package:homepage/widgets/QuestionList.dart';
import '../../models/Question.dart';

class BookmarkedTab extends StatelessWidget {
  final List<Question> _questions = new List<Question>();
  final List<Color> _colors = [Colors.lightBlue[500], Colors.lightBlue[900]];
  final List<double> _stops = [0.0, 0.9];
  final _solveButton=RaisedButton(
                      onPressed: () {},
                      color: Colors.blue[900],
                      child: Text(
                        'Solve',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Colors.white),
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
    _questions.add(Question('Hard', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Hard', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Easy', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Hard', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Hard', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Hard', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Easy', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _questions.add(Question('Easy', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(0.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: _colors,
                stops: _stops,
              )),
              height: 40,
              padding:
                  EdgeInsetsDirectional.only(start: 16, top: 10, bottom: 5),
              child: Text(
                'Bookmarked Questions',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              height: 1400,
              width: MediaQuery.of(context).size.width,
              child: QuestionList(_questions,_solveButton),
            )
          ],
        ),
      ),
    );
  }
}

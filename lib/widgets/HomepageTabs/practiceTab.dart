import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepage/Utils/Constants.dart';
import 'package:homepage/models/Question.dart';
import 'package:homepage/models/QuestionsPageModel.dart';
import 'package:homepage/widgets/Recent.dart';
import '../Footer.dart';

class PracticeTab extends StatelessWidget {
  final List<Color> _colors = [Colors.lightBlue[500], Colors.lightBlue[900]];
  final List<double> _stops = [0.0, 0.9];
  final List<Question> _questions = List<Question>();
  final List<Question> _recentQuestions = List<Question>();

  @override
  Widget build(BuildContext context) {
    _recentQuestions.add(Question('Hard', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    _recentQuestions.add(Question('Easy', 'algorithm', 'graph',
        'Just Random Questions to test the list', '10'));
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height +140*_recentQuestions.length + 100,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: _colors,
              stops: _stops,
            )),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: EdgeInsets.all(40),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          child: Container(
                            width: 600,
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Daily Practice',
                                      style: GoogleFonts.patuaOne(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Daily updated questions selected and prepared by\nour team .\ndaily preparation',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('0 %'),
                                  ],
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Constants.questionsRouteName,
                                        arguments: QuestionsPageModel(
                                            'http://google.com',
                                            'Daily Questions'),
                                      );
                                    },
                                    color: Colors.blue[900],
                                    child: Text('Solve',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18)))
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(40),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          child: Container(
                            width: 600,
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Interview Preparation',
                                      style: GoogleFonts.patuaOne(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Collection of interview questions from recruiters at \ncolleges.\n30 days preparation',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('0 %'),
                                  ],
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Constants.questionsRouteName,
                                        arguments: QuestionsPageModel(
                                            'http://google.com',
                                            'Interview preparation'),
                                      );
                                    },
                                    color: Colors.blue[900],
                                    child: Text('Solve',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18)))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          margin: EdgeInsets.all(40),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          child: Container(
                            width: 600,
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Algorithm and Data Structures',
                                      style: GoogleFonts.patuaOne(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Algorithm and Data Structure Questions\nfor practice .\nScore : 0',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('0 Solved'),
                                  ],
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Constants.questionsRouteName,
                                        arguments: QuestionsPageModel(
                                            'http://google.com',
                                            'Algorithm and Datastructure'),
                                      );
                                    },
                                    color: Colors.blue[900],
                                    child: Text('Solve',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18)))
                              ],
                            ),
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(40),
                          color: Colors.white,
                          shadowColor: Colors.grey,
                          child: Container(
                            width: 600,
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Language Practice',
                                      style: GoogleFonts.patuaOne(
                                        textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Language specific coding problems for \nc++,python,java,etc.\nScore 0',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('0 %'),
                                  ],
                                ),
                                RaisedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        Constants.questionsRouteName,
                                        arguments: QuestionsPageModel(
                                            'http://google.com', 'Language'),
                                      );
                                    },
                                    color: Colors.blue[900],
                                    child: Text('Solve',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 18)))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsetsDirectional.only(
                          top: 5,
                          bottom: 5,
                          start: 16,
                        ),
                        color: Colors.white,
                        height: 40,
                        child: Row(
                          children: [
                            Text('Recent',
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 20)),
                          ],
                        ),),
                    RecentList(_recentQuestions),
                    SizedBox(height: 100),
                  ],
                ),
                Footer(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

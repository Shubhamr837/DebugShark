import 'package:flutter/material.dart';
import 'package:homepage/Utils/Constants.dart';
import 'package:homepage/models/Question.dart';

class QuestionList extends StatefulWidget {
  final List<Question> _questions;
  QuestionList(this._questions);
  @override
  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget._questions.length,
      itemBuilder: (ctx, index) {
        return Align(
          alignment: FractionalOffset.center,
          child: Card(
            margin: EdgeInsets.all(0),
            borderOnForeground: false,
            shape: Border(
                left: BorderSide(
                    color:
                        widget._questions[index].difficulty.compareTo('Hard') ==
                                0
                            ? Colors.red
                            : widget._questions[index].difficulty
                                        .compareTo('Easy') ==
                                    0
                                ? Colors.green[600]
                                : Colors.orange[400],
                    width: 15)),
            child: Container(
              height: 140,
              width: 3 * MediaQuery.of(context).size.width / 5,
              padding: EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget._questions[index].title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 25),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Difficulty : ' + widget._questions[index].difficulty,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                            color: Colors.grey,
                          )),
                      SizedBox(height: 10),
                      Text('Score : ' + widget._questions[index].score.toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 15,
                              color: Colors.grey))
                    ],
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        Constants.questionpage+'/'+widget._questions[index].id.toString(),
                      );
                    },
                    color: Colors.blue[900],
                    child: Text(
                      'Solve',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:homepage/models/Question.dart';

class QuestionList extends StatefulWidget {
  final List<Question> _questions;
  final _button;
  QuestionList(this._questions, this._button);
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
                        widget._questions[index].dificulty.compareTo('Hard') ==
                                0
                            ? Colors.red
                            : widget._questions[index].dificulty
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
                      Text('Difficulty : ' + widget._questions[index].dificulty,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                            color: Colors.grey,
                          )),
                      SizedBox(height: 10),
                      Text('Score : ' + widget._questions[index].score,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontSize: 15,
                              color: Colors.grey))
                    ],
                  ),
                  widget._button
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

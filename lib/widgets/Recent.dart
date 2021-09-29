import 'package:flutter/material.dart';
import 'package:homepage/models/Question.dart';

class RecentList extends StatelessWidget {
  List<Question> _recentQuestions = new List<Question>();
  RecentList(this._recentQuestions);
  @override
  Widget build(BuildContext context) {
    return Container(height: _recentQuestions.length*140.0,color: Colors.white,
      child: Column(children:_recentQuestions.map((element){return Align(
              alignment: FractionalOffset.centerLeft,
              child: Card(
                  margin: EdgeInsets.all(0),
                  borderOnForeground: false,
                  
                  child: Container(
                    height:140,
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
                                element.title,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.w100, fontSize: 25),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  'Difficulty : ' +
                                      element.difficulty,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: 15,
                                    color: Colors.grey,
                                  )),
                              SizedBox(height: 10),
                              Text('Score : ' + element.score.toString(),
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      fontSize: 15,
                                      color: Colors.grey))
                            ],
                          ),
                          RaisedButton(
                            onPressed: () {},
                            color: Colors.blue[900],
                            child: Text('Solve',style: TextStyle(fontWeight:FontWeight.w700,fontSize:20,color:Colors.white),),
                          ),
                        ]),
                  )));} ).toList()
      )
    );
  }
}
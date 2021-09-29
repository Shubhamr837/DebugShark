import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homepage/Utils/Constants.dart';
import 'package:homepage/Utils/api_service.dart';
import 'package:homepage/models/Question.dart';
import 'package:homepage/models/QuestionsPageModel.dart';
import 'package:homepage/widgets/QuestionList.dart';
import '../widgets/profileButton.dart';
import '../widgets/Footer.dart';

class Questions extends StatefulWidget {
String title;

  Questions({this.title});
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int selectedValDifficulty;
  int selectedValStatus;

  @override
  void initState() {
    super.initState();
    selectedValDifficulty = 0;
    selectedValStatus = 1;
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Future<List<Question>> getQuestions() async {
    List<Question> ret = await ApiServices.getAllQuestion();
    log(ret.length.toString());
    return ret;
  }

  sortDifficulty(val) {
    setState(() {
      if (selectedValDifficulty == val) {
        selectedValDifficulty = 0;
      } else {
        selectedValDifficulty = val;
      }
    });
  }

  sortStatus(val) {
    setState(() {
      if (selectedValStatus == val) {
        selectedValStatus = 1;
      } else {
        selectedValStatus = val;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    final String title = widget.title??ModalRoute.of(context).settings.arguments;

    final List<Color> _colors = [Colors.lightBlue[500], Colors.lightBlue[900]];
    final List<double> _stops = [0.0, 0.9];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width / 3,
              child: Text(
                "Code </> Kitchen",
                style: TextStyle(
                    color: Colors.blue[900],
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              ),
            ),
          ],
        ),
        actions: [
          ProfileButton(),
        ],
        elevation: 0.0,
      ),
      body: FutureBuilder(
        future: getQuestions(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done) {

            final List<Question> _questions = snapshot.data;
            if(_questions==null){
              return Text("No Questions Found");
            }
            else
            return SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: _colors,
                          stops: _stops,
                        ),
                      ),
                      height: 40,
                      padding: EdgeInsetsDirectional.only(start: 16, top: 10),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.ltr,
                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.only(top:20),
                          height: 1420.00,
                          width: 3 * MediaQuery.of(context).size.width / 5,
                          child: QuestionList(_questions),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width / 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Status',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: selectedValStatus,
                                      onChanged: (val) {
                                        sortStatus(val);
                                      },
                                    ),
                                    Text('UnSolved')
                                  ],
                              ),
                              ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: selectedValStatus,
                                      onChanged: (val) {
                                        sortStatus(val);
                                      },
                                    ),
                                    Text('solved')
                                  ]),
                              Text('Difficulty',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                              ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: selectedValDifficulty,
                                      onChanged: (val) {
                                        sortDifficulty(val);
                                      },
                                    ),
                                    Text('Easy')
                                  ]),
                              ButtonBar(
                                  alignment: MainAxisAlignment.start,
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: selectedValDifficulty,
                                      onChanged: (val) {
                                        sortDifficulty(val);
                                      },
                                    ),
                                    Text('Medium')
                                  ]),
                              ButtonBar(
                                alignment: MainAxisAlignment.start,
                                children: [
                                  Radio(
                                    value: 3,
                                    groupValue: selectedValDifficulty,
                                    onChanged: (val) {
                                      sortDifficulty(val);
                                    },
                                  ),
                                  Text('Hard')
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Footer(),
              ],
            ),
          );
          }
          else {
            return CircularProgressIndicator();
          }
        }
      ),
    );
  }
}

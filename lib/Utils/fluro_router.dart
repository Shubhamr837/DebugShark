import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:homepage/Utils/Constants.dart';
import 'package:homepage/main.dart';
import 'package:homepage/models/QuestionsPageModel.dart';
import 'package:homepage/pages/Questions.dart';
import 'package:homepage/pages/profile.dart';
import 'package:homepage/pages/question_page.dart';

class Fluro{
  static final FluroRouter router = FluroRouter();

  static Handler _questionsListHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
return Questions(title: params['section'][0],);
  });

  static Handler _profilePageHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
    return ProfilePage();
  });

  static Handler _questionPageHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
    return QuestionPage(id: params['id'][0],);
  });

  static Handler _homePageHandler = Handler(handlerFunc: (BuildContext context,Map<String,dynamic> params){
    return MyHomePage(title: 'Flutter Demo Home Page');
  });
  static void setUpRouter(){
    router.define(Constants.questionsRouteName+'/:section', handler: _questionsListHandler);
    router.define(Constants.profileRouteName, handler: _profilePageHandler);
    router.define('/', handler: _homePageHandler);
    router.define(Constants.questionpage+'/:id', handler: _questionPageHandler);
  }
}
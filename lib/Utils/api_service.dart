import 'dart:convert';
import 'dart:developer';

import 'package:homepage/Utils/ApiConstants.dart';
import 'package:homepage/models/Question.dart';
import 'package:http/http.dart' as http;
class ApiServices {
  static Future<Question> getQuestion(final String id) async {
    Uri uri = Uri.parse(ApiConstants.getQuestionByIDEndpoint+id);
    var response = await http.get(uri);
    //If the http request is successful the statusCode will be 200
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      List<Map<String,dynamic>> responseList = (data==null) ? null : List.from(data['list']);

      return Question.fromJson(responseList[0]);

    }
    else {
      return null;
    }
  }

   static Future<List<Question>> getAllQuestion() async {

    Uri uri = Uri.parse(ApiConstants.getAllQuestionsEndpoint);
    var response = await http.get(uri);
    log(response.statusCode.toString());
    //If the http request is successful the statusCode will be 200
    log(response.body);
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      List<Map<String,dynamic>> responseList = (data==null) ? null : List.from(data['list']);
      List<Question> res = [];
      for(int i=0;i<responseList.length;i++){
        res.add(Question.fromJson(responseList[i]));
      }
      return res;
    }
    else {
      return null;
    }
  }

  static Future<List<Question>> getQuestionsByCategory(final String category) async {
    Uri uri = Uri.parse(ApiConstants.getQuestionsByCategoryEndpoint+category);
    var response = await http.get(uri);
    //If the http request is successful the statusCode will be 200
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      List responseList = (data==null) ? null : List.from(data['list']);
      return responseList.map((e) => Question.fromJson(e));
    }
    else {
      return null;
    }
  }

  static Future<int> compileCodeCpp(final String code,final String inputUrl,final String outputUrl) async {
    var requestBody = {
      'code': code,
      'inputUrl': inputUrl,
      'outputUrl': outputUrl,
    };

    final response = await http.post(
      Uri.parse(
          ApiConstants.runCppEndpoint),
      body: requestBody,
    );

    var res = json.decode(response.body);
    bool ret = res['result'];
    if(ret) {
      return 0;
    }
    else {
      String compile = res['compile'];
      if(compile.length>0) {
          return 1;
      } else {
          return 2;
      }
    }
  }

  static Future<String> getRawText(String url) async {
      Uri uri = Uri.parse(url);
      var response = await http.get(uri);
      //If the http request is successful the statusCode will be 200
      if(response.statusCode == 200){
        return response.body;
      }
      else {
        return null;
      }
  }
}
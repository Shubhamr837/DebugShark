import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homepage/Utils/api_service.dart';
import 'package:homepage/models/Question.dart';
import 'package:homepage/widgets/Footer.dart';
import 'package:homepage/widgets/profileButton.dart';

class QuestionPage extends StatefulWidget {
  String id;

  QuestionPage({@required this.id});

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  TextEditingController codeController;
  Question question;

  Future<bool> alertDialog(final BuildContext context,final String compileMsg,final String message ) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(compileMsg),
            content: Text(message),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void submit(BuildContext context) async {
    int ret = await ApiServices.compileCodeCpp(codeController.text, question.inputUrl, question.outputUrl);
    if(ret==0){
     alertDialog(context,"Compilation Success", "All test cases passed");
    }
    else if(ret==1){
      alertDialog(context,"Compilation Failed", "");
    }
    else {
      alertDialog(context, "Compilation Success", "Test cases have failed");
    }
  }

  Future<Question> getQuestion() async {
    question = await ApiServices.getQuestion(widget.id);

    return question;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    codeController = TextEditingController(
        text: "#include <stdio.h>\n"
            "int main() {\n"
            "// printf() displays the string inside quotation\n"
            "printf(\"Hello, World!\");\n"
            "return 0;\n"
            "}\n");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
          future: getQuestion(),
          builder: (context, snapshot) {
            if(snapshot.connectionState==ConnectionState.done) {
              return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      question.title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: FutureBuilder(
                      future: ApiServices.getRawText(question.questionText),
                      builder: (context, snapshot) {
                        if(snapshot.connectionState==ConnectionState.done) {
                          return Text(
                              snapshot.data);
                        }
                        else {
                          return CircularProgressIndicator();
                        }
                      }
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(  height: MediaQuery.of(context).size.height / 1.5,
                        width: MediaQuery.of(context).size.width / 2,
                        child: Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 1.5,
                              width: MediaQuery.of(context).size.width / 2,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent)),
                              child: TextField(
                                controller: codeController,
                                maxLines: 400,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: MaterialButton(
                                color: Colors.blue[900],
                                child: Text("          Submit        ",style: TextStyle(color: Colors.white),),
                                onPressed: (){
                                  submit(context);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Footer()
                ],
              ),
            );
            }
            else {
              return CircularProgressIndicator();
            }
          }
        ));
  }
}

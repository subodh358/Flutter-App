import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './logic/question.dart';



void score(BuildContext context){
  QuestionSet cal = QuestionSet();
  int c = cal.getQuestionCount();
  var alertDialogue = AlertDialog(
    title: Text("Well done ....!!"),
    content: Text("Your score is ${correct.length}/$c"),
  );

  showDialog(
    context: context,
    builder: (BuildContext context){
      return alertDialogue;
    }
  );
}

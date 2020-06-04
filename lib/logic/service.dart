import 'package:flutterapp/logic/question.dart';

class Get extends QuestionSet{
  QuestionSet fetch;
  requirement(){
    fetch = QuestionSet();
    return fetch;
  }
}

Get request = Get();


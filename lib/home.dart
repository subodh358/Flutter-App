import 'package:flutter/material.dart';
import 'package:flutterapp/pages/showresult.dart';
import './logic/question.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<Widget> _getList() {
    List<Widget> temp = [];
    if (number == 0) {
      temp.add(Text(
        "All the best",
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 30.0,
          color: Colors.blue,
        ),
      ));
    }

    temp.add(Text(
      request.getQuestion(number),
      style: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 22.0,
      ),
    ));

    for (var i = 0; i < request.getOptionsCount(number); i++) {
      temp.add(RaisedButton(
        child: Text(request.getOptions(number, i)),
        onPressed: () {
          print(request.correctAnswer(number));
          print(i + 1);

          if (request.correctAnswer(number) == i + 1) {
            correct.add(1);
            print('correct answer');
          }
          int x = correct.length;
          print("Hello score is $x");
          number++;

          if (number == request.getQuestionCount()) {
            number = 0;
            print("your score is ${correct.length}");
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => ResultPage() )
            );
          }
          setState(() {});
        },
      ));
    }

    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Question Paper",
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 22.0,
          ),
        )),
        body: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: _getList(),
          ),
        ));
  }
}

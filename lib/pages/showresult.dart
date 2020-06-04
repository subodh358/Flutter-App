import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/logic/question.dart';


class ResultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ResultPage();
  }
}

class _ResultPage extends State<ResultPage> {

  List<Widget> _setList() {
    List<Widget> set = [];

    if (correct.length < request.getQuestionCount()/2) {
      set.add(Text(
        "Sorry You are failed...!",
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 22.0,
            fontStyle: FontStyle.italic,
            color: Colors.red),
      ));
    } else {
      set.add(
        Text(
          "Congratulations...You made it...!",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 22.0,
              fontStyle: FontStyle.italic,
              color: Colors.green),
        ),
      );
    }

    set.add(
      Text(
        "Your score is ${correct.length}",
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 22.0,
            fontStyle: FontStyle.italic,
            color: Colors.green),
      ),
    );

    set.add(
      FloatingActionButton(
        
        child: Icon(Icons.refresh),
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Re-Test',
      ),
    );

    return set;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _setList(),
        ),
      ),
    );
  }
}

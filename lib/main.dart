import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class Questions {
  var question;
  var answers = [];
}

class _HomePageState extends State<HomePage> {
  Questions que = new Questions();
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
    que.question = "How are you?";
    que.answers = ['Fine', 'Good', 'Well', 'Sick'];
    List<Widget> temp = [];
    temp.add(Text(que.question));
    for (var i = 0; i < que.answers.length; i++) {
      temp.add(RaisedButton(
        child: Text(que.answers[i]),
        onPressed: () {
          number++;
          setState(() {});
        },
      ));
    }

    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Question Paper")),
        body: Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _getList()),
        ));
  }
}

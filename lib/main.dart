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

  Questions(var question, var answers){
    this.question= question;
    this.answers = answers;
    
  }

}

class _HomePageState extends State<HomePage> {
  int number = 0;

  List questionList = [];
  _HomePageState(){
    questionList.add(Questions("How are you?", ['Fine', 'Good', 'Well', 'Sick']));

    questionList.add(Questions("What is caapital of india?", ['Nanded', 'Nashik', 'Mumbai', 'Delhi']));
    
    questionList.add(Questions("What is 2/2 ?", ['4', '1', '5', '6']));
    
    questionList.add(Questions("What is opposit of bad?", ['Aweosome', 'Good', 'Badness', 'Badless']));
    
    questionList.add(Questions("What is yout GF name?",['Rashmi', 'Anju', 'Siya', 'Anamika']));
    
    questionList.add(Questions("How much height of ambani house?", ['0.9km', '1 km', '2.4km', '4km']));
    
    questionList.add(Questions("What is your favouriate coloure", ['Blue', 'Black', 'Voilet', 'Pink']));
    
    questionList.add(Questions("What is your favouriate space agency?", ['NASA', 'ISRO', 'SpaceX', 'ESSA']));

    questionList.add(Questions("What is einstine equation of relativity?", ['E=MC', 'E=MC*2', 'E=MCC', 'E=AB']));

  }

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
    temp.add(Text(questionList.elementAt(number).question));
    for (var i = 0; i < questionList.elementAt(number).answers.length; i++) {
      temp.add(RaisedButton(
        child: Text(questionList.elementAt(number).answers[i]),
        onPressed: () {
          number++;
          if(number == questionList.length){
            number = 0;
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
        appBar: AppBar(title: Text("Question Paper")),
        body: Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _getList()),
        ));
  }
}

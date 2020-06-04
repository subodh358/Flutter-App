class Questions {
  var id;
  var question;
  var answers = [];

  Questions(var id, var question, var answers){
    this.id = id;
    this.question= question;
    this.answers = answers;    
  }

}
var correct = [];


class QuestionSet {

  List questionList = [];
  QuestionSet(){
    questionList.add(Questions(2,"How are you?", ['Fine', 'Good', 'Well', 'Sick']));
    questionList.add(Questions(4,"What is caapital of india?", ['Nanded', 'Nashik', 'Mumbai', 'Delhi']));
    questionList.add(Questions(2,"What is 2/2 ?", ['4', '1', '5', '6']));
    questionList.add(Questions(2,"What is opposit of bad?", ['Aweosome', 'Good', 'Badness', 'Badless']));
    questionList.add(Questions(1,"What is yout GF name?", ['Rashmi', 'Anju', 'Siya', 'Anamika']));
    questionList.add(Questions(1,"How much height of ambani house?", ['0.9km', '1 km', '2.4km', '4km']));
    questionList.add(Questions(1,"What is your favouriate coloure", ['Blue', 'Black', 'Voilet', 'Pink']));  
    questionList.add(Questions(2,"What is your favouriate space agency?", ['NASA', 'ISRO', 'SpaceX', 'ESSA']));
    questionList.add(Questions(3,"What is einstine equation of relativity?", ['E=MC', 'E=MC2', 'E=MCC', 'E=AB']));

  }

  correctAnswer(int update){
    return questionList.elementAt(update).id;
  }

  getQuestion(int update){
    return questionList.elementAt(update).question;
  }

  getOptionsCount(int update){
    return questionList.elementAt(update).answers.length;
  }

  getOptions(int update, int c){
    return questionList.elementAt(update).answers[c];
  }

  getQuestionCount(){
    return questionList.length;
  }

}

QuestionSet request = QuestionSet();
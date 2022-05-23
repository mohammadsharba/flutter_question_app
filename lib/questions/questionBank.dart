import 'package:flutter_app/questions/questionClass.dart';

class QuestionBank {
  List<QClass> _questionList = [
    QClass(
        question: " عدد الجواميس بالصورة هو 3",
        answer: false,
        img: "images/questions/q1.jpg"),
    QClass(
        question: "عدد الأشجار بالصورة هو 2",
        answer: false,
        img: "images/questions/q2.jpg"),
    QClass(
        question: "عدد الخراف بالصورة هو 3",
        answer: true,
        img: "images/questions/q3.jpg"),
    QClass(
        question: "عدد الأبواب بالصورة هو 2",
        answer: true,
        img: "images/questions/q4.jpg"),
    QClass(
        question: "القمر ينير المكان خلف الشمس",
        answer: false,
        img: "images/questions/q5.jpg"),
  ];

  String question(int qNumber) {
    return _questionList[qNumber].ques;
  }

  String imagePath(int qNumber) {
    return _questionList[qNumber].image;
  }

  bool answer(int qNumber) {
    return _questionList[qNumber].ans;
  }

  int numOfQuestion() {
    return _questionList.length;
  }
}

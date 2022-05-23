import 'package:flutter/material.dart';
import 'package:flutter_app/questions/questionBank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Questions extends StatefulWidget {
  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  QuestionBank qBank = QuestionBank();
  int qNumber = 0;
  int trueAnswers = 0;
  List<Icon> resultIcon = [];

  answerChecker(bool answer, BuildContext context) {
    setState(() {
      if (answer == qBank.answer(qNumber)) {
        resultIcon.add(Icon(
          Icons.thumb_up_alt_rounded,
          color: Color(0xFF2E7D32),
        ));

        trueAnswers++;
      } else {
        resultIcon.add(Icon(
          Icons.thumb_down_alt_rounded,
          color: Color(0xFFB71C1C),
        ));
      }
      if (qNumber >= qBank.numOfQuestion() - 1) {
        print("end of game");
        Alert(
          context: context,
          title: "مبروك",
          desc: "انتهت اللعبة, لقد اجبت على $trueAnswers من اصل خمس اسئلة.",
          buttons: [
            DialogButton(
              child: Text(
                "اللعب من جديد",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => resetAll(context),
              width: 120,
            )
          ],
        ).show();
      } else {
        qNumber++;
        print("$qNumber question of 5");
      }
    });
  }

  resetAll(BuildContext context) {
    setState(() {
      Navigator.pop(context);
      qNumber = 0;
      resultIcon = [];
      trueAnswers = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("اسئلة تنافسية"),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
          child: Builder(builder: (context) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: resultIcon,
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(qBank.imagePath(qNumber)),
                      SizedBox(
                        height: 15,
                      ),
                      Text(qBank.question(qNumber),
                          style: TextStyle(
                              fontSize: 30, color: Color.fromRGBO(0, 0, 0, 1))),
                    ],
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => answerChecker(true, context),
                    child: Text(
                      "اجابة صحيحة",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.green[500])),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => answerChecker(false, context),
                    child: Text(
                      "اجابة خاطئة",
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red[500])),
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}

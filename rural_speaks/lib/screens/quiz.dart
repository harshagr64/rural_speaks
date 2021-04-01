import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class SkillAssessment extends StatefulWidget {
  static const routeName = '/skillassessment';

  @override
  _SkillAssessmentState createState() => _SkillAssessmentState();
}

class _SkillAssessmentState extends State<SkillAssessment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F6F8),
      appBar: AppBar(
        title: Text(
          'Skill Assessment',
          // style: TextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: QuizView(
                    showCorrect: true,
                    questionTag: 'Question 1',
                    questionColor: Colors.black,
                    tagColor: Colors.black,
                    backgroundColor: Color(0xFF88c693).withOpacity(0.3),
                    tagBackgroundColor: Colors.white,
                    answerColor: Colors.white,
                    answerBackgroundColor: Colors.black.withOpacity(0.7),
                    question:
                        'This time tomorrow, I ............ on the beach.',
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    rightAnswer: 'will be lying',
                    wrongAnswers: ['am lying', 'will lie'],
                    onRightAnswer: () => print('Right!'),
                    onWrongAnswer: () {
                      Alert(
                        context: context,
                        title: 'Wrong Answer!',
                        closeIcon: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel_outlined,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        style: AlertStyle(
                          backgroundColor: Colors.white,
                        ),
                        buttons: [
                          DialogButton(
                            color: Colors.redAccent,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ).show();
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: QuizView(
                    showCorrect: true,
                    questionTag: 'Question 2',
                    questionColor: Colors.black,
                    tagColor: Colors.black,
                    backgroundColor: Color(0xFF88c693).withOpacity(0.3),
                    tagBackgroundColor: Colors.white,
                    answerColor: Colors.white,
                    answerBackgroundColor: Colors.black.withOpacity(0.7),
                    question:
                        'She said that she ....................... help me.',
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    rightAnswer: 'would',
                    wrongAnswers: ['will', 'shall'],
                    onRightAnswer: () => print('Right!'),
                    onWrongAnswer: () {
                      Alert(
                        context: context,
                        title: 'Wrong Answer!',
                        closeIcon: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel_outlined,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        style: AlertStyle(
                          backgroundColor: Colors.white,
                        ),
                        buttons: [
                          DialogButton(
                            color: Colors.redAccent,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ).show();
                    }),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: QuizView(
                    showCorrect: true,
                    questionTag: 'Question 3',
                    questionColor: Colors.black,
                    tagColor: Colors.black,
                    backgroundColor: Color(0xFF88c693).withOpacity(0.3),
                    tagBackgroundColor: Colors.white,
                    answerColor: Colors.white,
                    answerBackgroundColor: Colors.black.withOpacity(0.7),
                    question:
                        'Phone me when you ............................ time.',
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    rightAnswer: 'have',
                    wrongAnswers: ['would have', 'will have'],
                    onRightAnswer: () => print('Right!'),
                    onWrongAnswer: () {
                     Alert(
                        context: context,
                        title: 'Wrong Answer!',
                        closeIcon: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel_outlined,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        style: AlertStyle(
                          backgroundColor: Colors.white,
                        ),
                        buttons: [
                          DialogButton(
                            color: Colors.redAccent,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ).show();
                    }),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: QuizView(
                    showCorrect: true,
                    questionTag: 'Question 4',
                    questionColor: Colors.black,
                    tagColor: Colors.black,
                    backgroundColor: Color(0xFF88c693).withOpacity(0.3),
                    tagBackgroundColor: Colors.white,
                    answerColor: Colors.white,
                    answerBackgroundColor: Colors.black.withOpacity(0.7),
                    question:
                        'I will follow you wherever you ...........................',
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    rightAnswer: 'go',
                    wrongAnswers: ['goes', 'will go'],
                    onRightAnswer: () => print('Right!'),
                    onWrongAnswer: () {
                      Alert(
                        context: context,
                        title: 'Wrong Answer!',
                        closeIcon: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel_outlined,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        style: AlertStyle(
                          backgroundColor: Colors.white,
                        ),
                        buttons: [
                          DialogButton(
                            color: Colors.redAccent,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ).show();
                    }),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: QuizView(
                    showCorrect: true,
                    questionTag: 'Question 5',
                    questionColor: Colors.black,
                    tagColor: Colors.black,
                    backgroundColor: Color(0xFF88c693).withOpacity(0.3),
                    tagBackgroundColor: Colors.white,
                    answerColor: Colors.white,
                    answerBackgroundColor: Colors.black.withOpacity(0.7),
                    question:
                        'You ........................... an accident if you go on driving like that.',
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    rightAnswer: 'will have',
                    wrongAnswers: ['would have', 'are having'],
                    onRightAnswer: () => print('Right!'),
                    onWrongAnswer: () {
                      Alert(
                        context: context,
                        title: 'Wrong Answer!',
                        closeIcon: Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel_outlined,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        style: AlertStyle(
                          backgroundColor: Colors.white,
                        ),
                        buttons: [
                          DialogButton(
                            color: Colors.redAccent,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ).show();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

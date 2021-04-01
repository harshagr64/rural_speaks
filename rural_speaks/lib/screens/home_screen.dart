import 'package:flutter/material.dart';
import "package:firebase_auth/firebase_auth.dart";

class HomeScreen extends StatefulWidget {
  final User name;
  HomeScreen(this.name);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var details = [
    {
      'title': 'Video Tutorials',
      'subtitle': 'App will provide video learning',
      'image': 'assets/images/video.jpg',
      'navigation': '/tutorial'
    },
    {
      'title': 'Agricultural Based Learning',
      'subtitle': 'App will provide Agricultural Based Learning',
      'image': 'assets/images/farm_prev_ui.png',
      'navigation': '/tutorial'
    },
    {
      'title': 'Language Translator',
      'subtitle': 'App will provide capability of language translation',
      'image': 'assets/images/translation.jpg',
      'navigation': '/languagetranslator'
    },
    {
      'title': 'Skill Assessment',
      'subtitle': 'App will take Quizzes, Puzzles, tests for check skills',
      'image': 'assets/images/Skills.jpg',
      'navigation': '/skillassessment'
    },
    {
      'title': 'Doubt Assistant',
      'subtitle': 'Person can ask question using call',
      'image': 'assets/images/ask-questions.jpg',
      'navigation': '/doubt'
    },
  ];
  @override
  Widget build(BuildContext context) {
    // print(widget.name);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 50,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Hello,",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87),
                        ),
                      ),
                      Container(
                        // padding: EdgeInsets.only(left: 10),
                        child: Text(
                          widget.name.displayName,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 200.0,
                // ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/avatar1_prev_ui.png'),
                  decoration: BoxDecoration(
                    color: Color(0xFF88c693).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: details.length,
                  itemBuilder: (BuildContext content, int index) {
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: 10,
                        left: 0,
                        right: 0,
                        bottom: 10,
                      ),
                      decoration: BoxDecoration(
                        color: index % 2 == 0
                            ? Color(0xFFFF7F50).withOpacity(0.2)
                            : Color(0xFF88c693).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 100,
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        leading: Container(
                          width: 80,
                          height: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            details[index]['image'],
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(details[index]['title'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            )),
                        trailing: Container(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFFFF7F50),
                              size: 20,
                            ),
                            onPressed: () => Navigator.pushNamed(
                                context, '${details[index]['navigation']}'),
                          ),
                        ),
                        // subtitle: Padding(
                        //   padding: EdgeInsets.only(top: 10),
                        //   child: Text(details[index]['subtitle'],
                        //       style: TextStyle(
                        //         fontSize: 20,
                        //         color: Colors.black,
                        //       )),
                        // ),
                        onTap: () => Navigator.pushNamed(
                            context, '${details[index]['navigation']}'),
                        // trailing: Image.asset('${details[index]['image']}'),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

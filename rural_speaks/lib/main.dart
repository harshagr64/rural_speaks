import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";
import "screens/demo.dart";
import "screens/tutorial_screen.dart";
import "screens/quiz.dart";
import "screens/translator.dart";
import "screens/doubt_assisstant.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rural Speaks',
      home: Demo(),
      theme: ThemeData(primaryColor: Color(0xFFFF7F50)),
      routes: {
        TutorialScreen.routeName: (ctx) => TutorialScreen(),
        SkillAssessment.routeName: (ctx) => SkillAssessment(),
        Translate.routeName: (ctx) => Translate(),
        Doubt.routeName: (ctx) => Doubt(),
      },
    );
  }
}

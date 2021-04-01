import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "auth_screen.dart";
import "home_screen.dart";

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, snapShot) {
        if (snapShot.hasData) {
          print(true);
          return HomeScreen(snapShot.data);
        } else {
          print(false);
          return AuthScreen();
        }
      },
    );
  }
}

import "package:flutter/material.dart";
import "../widgets/sign_in.dart";

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        padding: EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
          color: Color(0xFFE4E8EE).withOpacity(0.3),
        ),
        // padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/auth.jpg',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Let's Learn Today for Better Tomorrow",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Text(
                      "Allow yourself to be a beginner; no one starts off being excellent.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              // mainAxisAlignment: ,
              children: [
                InkWell(
                  onTap: () => signInWithGoogle(),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF7F50),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/googlelogo.png',
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sign In to continue",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

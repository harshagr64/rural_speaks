import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class Doubt extends StatelessWidget {
  static const routeName = '/doubt';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doubt Assisstant'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.asset(
                  'assets/images/assisstant1_prev_ui.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'If You Have Any query , Please contact us.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '(यदि आपके पास कोई प्रश्न है, तो कृपया हमसे संपर्क करें)',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.6,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFF88c693),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call),
                    InkWell(
                      onTap: () {
                        launch("tel:8890896120");
                      },
                      child: Text(
                        ': +91-7023540453',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 0.4,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Translate extends StatefulWidget {
  static const routeName = '/languagetranslator';
  @override
  _TranslateState createState() => _TranslateState();
}

class _TranslateState extends State<Translate> {
  GoogleTranslator translator =
      new GoogleTranslator(); //using google translator

  bool _isOuputShow = false;
  String out = '';
  final lang = TextEditingController(); //getting text
  void trans() {
    print("hello");
    print(lang.text);
    translator.translate(lang.text, to: 'en').then((output) {
      setState(() {
        out =
            output.text; //placing the translated text to the String to be used
      });
      print(out);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF7F50),
        title: Text(" Language Translator"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: lang,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: 'enter your text here',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(width: 2, color: Colors.black),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 10)),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () => trans(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFF7F50),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 60,
                  child: Text(
                    'Translate',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),

                  padding: EdgeInsets.all(15),
                  // onPressed: trans,

                  // color: Color(0xFFFF7F90).withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Output: ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFF88c693).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: MediaQuery.of(context).size.width * 1.0,
                    child: SingleChildScrollView(
                      child: Text(
                        out == ''
                            ? "your translated output will be displayed here"
                            : out,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //translated string
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SizedBox.expand(
        child: Container(
          child: Stack(
            children: <Widget>[
              SizedBox.expand(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //titleText(),
                    topImage(),
                    textLbl(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
  
}

Widget topImage() {
  return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 244,
      child: Image.asset("assets/images/intro1.png"));
}

Widget textLbl() {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Text(
      "Reuse the product for\nenvironment",
      style: TextStyle(
          color: Colors.black, fontSize: 24, fontFamily: 'Avenir-Roman'),
          textAlign: TextAlign.center,
    ),
    
  );
}
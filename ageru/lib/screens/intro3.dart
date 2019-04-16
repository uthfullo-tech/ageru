import 'package:flutter/material.dart';
import 'package:ageru/utils/CommonUtils.dart';
import 'package:ageru/screens/ChooseLoginOption.dart';

class Intro3 extends StatelessWidget {
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
                    startBtn(context)
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
      child: Image.asset("assets/images/intro3.png"));
}

Widget textLbl() {
  return Container(
    margin: const EdgeInsets.only(bottom: 30),
    child: Text(
      "Considering privacy and\nbeing displayed only to\nneighbors",
      style: TextStyle(
          color: Colors.black, fontSize: 24, fontFamily: 'Avenir-Roman'),
      textAlign: TextAlign.center,
    ),
  );
}

Widget startBtn(BuildContext context) {
  final startColor = const Color(0xff11998E);
  final endColor = const Color(0xff41EF7D);
  return Container(
    margin: const EdgeInsets.all(20),
    child: RaisedGradientButton(
        child: Text(
          'GET STARTED',
          style: TextStyle(color: Colors.white, fontFamily: 'Avenir-Medium', fontSize: 14),
        ),
        gradient: LinearGradient(
          colors: <Color>[startColor, endColor],
        ),
        onPressed: () {
          print('button clicked');
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLoginOption()));
        }),
  );
}

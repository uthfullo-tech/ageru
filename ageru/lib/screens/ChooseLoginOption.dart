import 'package:flutter/material.dart';
import 'package:ageru/utils/CommonUtils.dart';
import 'package:ageru/screens/EmailInput.dart';
import 'package:ageru/screens/SignInPage.dart';

class ChooseLoginOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SizedBox.expand(
        child: Container(
          child: Stack(
            children: <Widget>[
              SizedBox.expand(
                child: ListView(
                  children: <Widget>[
                    Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //titleText(),
                    topImage(),
                    facebookBtn(),
                    googleBtn(),
                    startBtn(context),
                    signInBtn(context),
                    bottomLbl()
                  ],
                ),
                  ],
                )
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
      height: 210,
      child: Image.asset("assets/images/login_logo.png"));
}

Widget facebookBtn() {
  final bgColor = const Color(0xff4267B2);
  return Container(
    margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
    child: RaisedCustomButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 18, child: Image.asset("assets/images/fbIcon.png")),
            Text(
              'Continue with Facebook',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Avenir-Medium',
                  fontSize: 14),
            ),
          ],
        ),
        color: bgColor,
        borderColor: bgColor,
        onPressed: () {
          print('button clicked');
        }),
  );
}

Widget googleBtn() {
  final bgColor = const Color(0xffDB4437);
  return Container(
    margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
    child: RaisedCustomButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 18, child: Image.asset("assets/images/googleIcon.png")),
            Text(
              'Continue with Google',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Avenir-Medium',
                  fontSize: 14),
            ),
          ],
        ),
        color: bgColor,
        borderColor: bgColor,
        onPressed: () {
          print('button clicked');
        }),
  );
}

Widget startBtn(BuildContext context) {
  final startColor = const Color(0xff11998E);
  final endColor = const Color(0xff41EF7D);
  return Container(
    margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
    child: RaisedGradientButton(
        child: Text(
          'GET STARTED',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Avenir-Medium', fontSize: 14),
        ),
        gradient: LinearGradient(
          colors: <Color>[startColor, endColor],
        ),
        onPressed: () {
          print('button clicked');
          Navigator.push(context, MaterialPageRoute(builder: (context) => EmailInput()));
        }),
  );
}

Widget signInBtn(BuildContext context) {
  final borderColor = const Color(0xff11998E);
  return Container(
    margin: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
    child: RaisedCustomButton(
        child: Text(
          'SIGN IN',
          style: TextStyle(
              color: borderColor, fontFamily: 'Avenir-Medium', fontSize: 14),
        ),
        color: Colors.white,
        borderColor: borderColor,
        onPressed: () {
          print('button clicked');
          Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
        }),
  );
}

Widget bottomLbl() {
  final textColor = const Color(0xff11998E);
  return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "By Sign up or Login, you are agree to our",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontFamily: 'Avenir-Book'),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Terms &amp; Condition",
                style: TextStyle(
                    color: textColor,
                    fontSize: 13,
                    fontFamily: 'Avenir-Book'),
                textAlign: TextAlign.center,
              ),

              Text(
                " and ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Avenir-Book'),
                textAlign: TextAlign.center,
              ),

              Text(
                "Privacy Policy",
                style: TextStyle(
                    color: textColor,
                    fontSize: 13,
                    fontFamily: 'Avenir-Book'),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ));
}

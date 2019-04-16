import 'package:flutter/material.dart';
import 'package:ageru/utils/CommonUtils.dart';

final _formKey = GlobalKey<FormState>();

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: MaterialApp(
          home: Scaffold(
              body: SizedBox.expand(
            child: Container(
              decoration: bg,
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 50, left: 20),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox.expand(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //titleText(),
                        topLbl(),
                        emailField(),
                        passwordField(),
                        forgotPass(),
                        signInBtn(context),
                        bottomLbl()
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        ));
  }
}

Widget topLbl() {
  return Container(
    margin: const EdgeInsets.only(bottom: 30, left: 30),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
      "Welcome Back!",
      style: TextStyle(
          color: Colors.black, fontSize: 26, fontFamily: 'Avenir-Medium'),
      textAlign: TextAlign.left,
    ),
    )
  );
}


Widget emailField() {
  return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Email',
          filled: true,
          fillColor: Colors.transparent,
          prefixIcon: Icon(
            Icons.email,
            size: 24.0,
            color: Colors.grey[350],
          ),
        ),

        // The validator receives the text the user has typed in
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter valid email';
          }
        },
      ));
}

Widget passwordField() {
  return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
      child: TextFormField(
        obscureText:true,
        decoration: InputDecoration(
          hintText: 'password',
          filled: true,
          fillColor: Colors.transparent,
          prefixIcon: Icon(
            Icons.lock,
            size: 24.0,
            color: Colors.grey[350],
          ),
        ),

        // The validator receives the text the user has typed in
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter password';
          }
        },
      ));
}

Widget signInBtn(BuildContext context) {
  final startColor = const Color(0xff11998E);
  final endColor = const Color(0xff41EF7D);
  return Container(
    margin: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
    child: RaisedGradientButton(
        child: Text(
          'SIGN IN',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Avenir-Medium', fontSize: 14),
        ),
        gradient: LinearGradient(
          colors: <Color>[startColor, endColor],
        ),
        onPressed: () {
          print('button clicked');
          if (_formKey.currentState.validate()) {

          }
          //Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLoginOption()));
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don’t have an account?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Avenir-Medium'),
                textAlign: TextAlign.center,
              ),

              Text(
                " Sign Up",
                style: TextStyle(
                    color: textColor,
                    fontSize: 13,
                    fontFamily: 'Avenir-Medium'),
                textAlign: TextAlign.center,
              ),
            ],
          )
        ],
      ));
}


Widget forgotPass(){
  return Container(
    margin: const EdgeInsets.only(right: 30),
    child: Align(
    alignment: Alignment.centerRight,
    child: Text(
                "Forgot password?",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Avenir-Book'),
                textAlign: TextAlign.center,
              ),
  ),
  );
}
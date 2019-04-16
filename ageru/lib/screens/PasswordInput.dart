import 'package:flutter/material.dart';
import 'package:ageru/utils/CommonUtils.dart';

final _formKey = GlobalKey<FormState>();

class PasswordInput extends StatelessWidget {
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
                        passwordField(),
                        nextBtn(context),
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
    margin: const EdgeInsets.only(bottom: 30),
    child: Text(
      "Create Password",
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontFamily: 'Avenir-Medium'),
      textAlign: TextAlign.center,
    ),
  );
}

Widget passwordField() {
  return Container(
      margin: const EdgeInsets.all(30),
      child: TextFormField(
        obscureText:true,
        decoration: InputDecoration(
          hintText: 'password',
          filled: true,
          fillColor: Colors.transparent,
          prefixIcon: Icon(
            Icons.lock,
            size: 30.0,
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

Widget nextBtn(BuildContext context) {
  final startColor = const Color(0xff11998E);
  final endColor = const Color(0xff41EF7D);
  return Container(
    margin: const EdgeInsets.all(20),
    child: RaisedGradientButton(
        child: Text(
          'NEXT',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Avenir-Medium', fontSize: 14),
        ),
        gradient: LinearGradient(
          colors: <Color>[startColor, endColor],
        ),
        onPressed: () {
          print('button clicked');
          if (_formKey.currentState.validate()) {}
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
                "Already have an account?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Avenir-Medium'),
                textAlign: TextAlign.center,
              ),

              Text(
                " Sign In",
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

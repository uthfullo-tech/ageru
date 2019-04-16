import 'package:flutter/material.dart';


var bg = new BoxDecoration(
    image: new DecorationImage(
  image: AssetImage("assets/images/loginBg.png"),
  fit: BoxFit.fill,
));


Widget loginBtnDesign(String text, String imagePath){

  var arrowImage ;
  if(imagePath != ''){
    arrowImage = Image(
                    height: 8,
                    image: AssetImage('$imagePath'),
                  );
  }
  else{
    arrowImage =Container();
  }
  return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60.0),
            ),
            color: Colors.transparent,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/images/btn_login.png"))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$text ",
                    style: TextStyle(color: Colors.white),
                  ),
                  arrowImage
                ],
              ),
            ),

          );
}


class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: gradient, boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}

class RaisedCustomButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final Color borderColor;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedCustomButton({
    Key key,
    @required this.child,
    this.color,
    this.borderColor,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: new Border.all(color: borderColor),
        color: color,
        boxShadow: [
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 1.5),
          blurRadius: 1.5,
        ),
      ]
        ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);
  Result({@required this.interpertion , @required this.bmiResult , @required this.resultText});

  final String bmiResult ;
  final String resultText;
  final String interpertion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                resultText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText.toUpperCase(),
                    style: TextStyle(
                        fontSize: 18.0,
                        color:Colors.green,
                    ),
                    ),
                    Text(bmiResult,
                      style: TextStyle(
                        fontSize: 100.0,
                        color:Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(interpertion,
                      style: TextStyle(
                        fontSize: 18.0,
                        color:Color(0xFF8D8E98),
                      ),),
                  ],
                ),
              )
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputPage()));
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "RE-CALCULATE",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Color(0XFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),
          )
        ],
      ),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  //const RoundedIconButton({Key? key}) : super(key: key);
  RoundedIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

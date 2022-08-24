import 'package:bmi_calculator_flutterr/constants.dart';
import 'package:bmi_calculator_flutterr/resuable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key key,
      @required this.bmiresult,
      @required this.resulttext,
      @required this.advice})
      : super(key: key);

  final String bmiresult;
  final String resulttext;
  final String advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: defualtTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResusableCard(
              colour: activecardcolor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resulttext.toUpperCase(),
                    style: resultextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: numBMItextstyle,
                  ),
                  Text(
                    advice,
                    textAlign: TextAlign.center,
                    style: textstylebmi,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: colorofbottomappbar,
              margin: const EdgeInsets.only(top: 10.0),
              height: bottomappbarheight,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

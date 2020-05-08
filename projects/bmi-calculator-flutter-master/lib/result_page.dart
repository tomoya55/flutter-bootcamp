import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'buttom_button.dart';
import 'bmi.dart';

class ResultPage extends StatelessWidget {
  final BMI bmi;

  ResultPage({this.bmi});

  @override
  Widget build(BuildContext context) {
    bmi.calculate();

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('RESULT', style: kTitleTextStyle),
            ),
          ),
          Expanded(
            child: Container(
              child: ReuseableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(bmi.getResult(), style: kResultTextStyle),
                    Text(bmi.getBMI(), style: kBMITextStyle),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      child: Text(bmi.getInteration(),
                          textAlign: TextAlign.center, style: kBobyTextStyle),
                    ),
                  ],
                ),
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            label: 'RE CALCULATE',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}

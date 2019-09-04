import 'package:bmicalc/style.dart';
import 'package:flutter/material.dart';
import 'package:bmicalc/components/reusable_card.dart';
import 'package:bmicalc/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.userResult,
      @required this.userBMI,
      @required this.userInterpretation});

  final String userResult;
  final String userBMI;
  final String userInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: Style.textLarge,
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ReusableCard(
              colour: Style.activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    userResult,
                    textAlign: TextAlign.center,
                    style: Style.greenText,
                  ),
                  Text(
                    userBMI,
                    textAlign: TextAlign.center,
                    style: Style.textXLarge,
                  ),
                  Column(
                    children: [
                      Text(
                        'Normal BMI range:',
                        textAlign: TextAlign.center,
                        style: Style.textDefault,
                      ),
                      Text(
                        '18,5 - 25 kg/m2',
                        textAlign: TextAlign.center,
                        style: Style.textMedium,
                      ),
                    ],
                  ),
                  Text(
                    userInterpretation,
                    textAlign: TextAlign.center,
                    style: Style.textMedium,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE YOUR BMI',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

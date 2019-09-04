import 'package:bmicalc/style.dart';
import 'package:flutter/material.dart';
import 'package:bmicalc/components/reusable_card.dart';
import 'package:bmicalc/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
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
                    'NORMAL',
                    textAlign: TextAlign.center,
                    style: Style.greenText,
                  ),
                  Text(
                    Style.bmi.toString(),
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
                    'You have a Normal body weight. Good Job!',
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

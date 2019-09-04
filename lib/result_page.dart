import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'style.dart';

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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'NORMAL',
                    style: Style.greenText,
                  ),
                  Text(
                    Style.bmi.toString(),
                    style: Style.textLarge,
                  ),
                  Text(
                    'Normal BMI range:',
                    style: Style.textDefault,
                  ),
                  Text(
                    '18,5 - 25 kg/m2',
                    style: Style.textMedium,
                  ),
                  Text(
                    'Comment!',
                    style: Style.textMedium,
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
              width: double.infinity,
              height: Style.bottomContainerHeight,
              padding: EdgeInsets.only(
                bottom: 20.0,
              ),
              child: Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
                  style: Style.textMedium,
                ),
              ),
              decoration: BoxDecoration(
                color: Style.accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

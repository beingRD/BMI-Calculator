import 'style.dart';
import 'icon_card.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: Style.navBarTitle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderType = Gender.male;
                      });
                    },
                    colour: genderType == Gender.male
                        ? Style.activeCardColor
                        : Style.inactiveCardColor,
                    childCard: IconCard(
                      gender: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderType = Gender.female;
                      });
                    },
                    colour: genderType == Gender.female
                        ? Style.activeCardColor
                        : Style.inactiveCardColor,
                    childCard: IconCard(
                      gender: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                  // ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Style.activeCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: Style.textDefault,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '180',
                        style: Style.textLarge,
                      ),
                      Text(
                        'cm',
                        style: Style.textBase,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Style.activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Style.activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: Style.bottomContainerHeight,
            decoration: BoxDecoration(
              color: Style.accentColor,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:bmicalc/style.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onTap});

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: Style.bottomContainerHeight,
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        child: Center(
          child: Text(
            title,
            style: Style.textMedium,
          ),
        ),
        decoration: BoxDecoration(
          color: Style.accentColor,
        ),
      ),
    );
  }
}

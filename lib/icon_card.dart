import 'package:flutter/material.dart';
import 'style.dart';

class IconCard extends StatelessWidget {
  final String gender;
  final IconData icon;

  IconCard({@required this.gender, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: Style.defaultIconSize(),
        ),
        SizedBox(
          height: Style.defaultMargin(),
        ),
        Text(
          gender,
          style: Style.textDefault,
        ),
      ],
    );
  }
}

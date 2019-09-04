import 'package:flutter/material.dart';

class Style {
  static final Color backgroundColor = Color(0xFF090B22);
  static final Color activeCardColor = Color(0xFF1D1F33);
  static final Color inactiveCardColor = Color(0xFF101427);
  static final Color accentColor = Color(0xFFEA1555);
  static final Color transAccentColor = Color(0x29EA1555);
  static final Color defaultColor = Color(0xFF8D8E98);
  static final Color buttonColor = Color(0xFF4C4F5E);
  static final Color white = Color(0xFFFFFFFF);
  static final Color green = Color(0xFF39C780);

  static Color maleCardColor = inactiveCardColor;
  static Color femaleCardColor = inactiveCardColor;

  static const bottomContainerHeight = 80.0;
  static const minHeight = 120.0;
  static const maxHeight = 220.0;
  static int height = 180;
  static int weight = 50;
  static int age = 18;
  static int bmi;

  static const _iconSize = 80.0;
  static const _defaultFontSize = 18.0;
  static const _largeFontSize = 50.0;

  static const _margin = 15.0;

  static final String _fontNameDefault = 'Muli';

  static final navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
  );

  static final textDefault = TextStyle(
    fontSize: _defaultFontSize,
    color: defaultColor,
  );

  static final textBase = TextStyle(
    fontSize: _defaultFontSize,
    color: defaultColor,
    textBaseline: TextBaseline.ideographic,
  );

  static final textLarge = TextStyle(
    fontSize: _largeFontSize,
    color: white,
    fontWeight: FontWeight.w900,
  );

  static final textMedium = Style.textDefault.copyWith(
    fontSize: 18.0,
    color: Style.white,
    letterSpacing: 2.0,
    fontWeight: FontWeight.bold,
  );

  static final greenText = Style.textDefault.copyWith(
    color: Style.green,
    fontWeight: FontWeight.w700,
    fontSize: 22.0,
  );

  static defaultIconSize() {
    return _iconSize;
  }

  static defaultMargin() {
    return _margin;
  }
}

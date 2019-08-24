import 'package:flutter/material.dart';

class Style {
  static final Color backgroundColor = Color(0xFF090B22);
  static final Color activeCardColor = Color(0xFF1D1F33);
  static final Color inactiveCardColor = Color(0xFF101427);
  static final Color accentColor = Color(0xFFEA1555);
  static final Color _textDefaultColor = Color(0xFF8D8E98);
  static final Color _textLargeColor = Colors.white;

  static Color maleCardColor = inactiveCardColor;
  static Color femaleCardColor = inactiveCardColor;

  static const bottomContainerHeight = 80.0;
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
    color: _textDefaultColor,
    
  );

  static final textBase = TextStyle(
    fontSize: _defaultFontSize,
    color: _textDefaultColor,
    textBaseline: TextBaseline.ideographic,
  );

  static final textLarge = TextStyle(
    fontSize: _largeFontSize,
    color: _textLargeColor,
    fontWeight: FontWeight.w900,
  );

  static defaultIconSize() {
    return _iconSize;
  }

  static defaultMargin() {
    return _margin;
  }
}

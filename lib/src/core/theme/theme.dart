import 'package:event_hub/src/core/constant/color.dart';
import 'package:flutter/material.dart';

class ZTheme{
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
  scaffoldBackgroundColor:CustomColor.backgroundColor
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black

  );
}
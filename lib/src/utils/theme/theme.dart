import 'package:codingwithme/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:codingwithme/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:flutter/material.dart';

import 'widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: const AppBarTheme(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      elevatedButtonTheme: TElevatedButtonTheme.lightOutlineButtonTheme,
      outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme);

  static ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.red,
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: const AppBarTheme(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(),
      elevatedButtonTheme: TElevatedButtonTheme.darkOutlineButtonTheme,
      outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme);
}

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:learningflutter/src/untils/themes/widgets_themes/text_theme.dart';


class AppTheme {
  static  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    );


  static  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );
}

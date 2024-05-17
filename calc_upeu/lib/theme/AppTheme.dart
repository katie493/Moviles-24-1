import 'package:calc_upeu/theme/theme-green.dart';
import 'package:calc_upeu/theme/theme-red.dart';
import 'package:calc_upeu/theme/theme-red.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static Color colorX = Color(0xff99ff05);
  static List<Color> colorOptions = [
    Colors.purple,
    Colors.green,
    Colors.teal,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    colorX
  ];
  AppTheme._();
  static List<String> colorText = <String>[
    "Purple",
    "Green",
    "Teal",
    "Yellow",
    "Orange",
    "Red",
    "Personalizado",
  ];
  //agregado para el color green y pink
  static TextTheme textTheme = TextTheme(
    headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    // Añade más estilos de texto según necesites
  );
  static List<ColorScheme> colorOptionsShemeL = [
    MaterialThemeGreen(textTheme).light().colorScheme,
    //lightColorSchemeBlue,
    MaterialThemeGreen(textTheme).lightMediumContrast().colorScheme,
    MaterialThemeGreen(textTheme).lightHighContrast().colorScheme,
    MaterialThemeRed(textTheme).light().colorScheme
  ];
  static List<ColorScheme> colorOptionsShemeD = [
    MaterialThemeGreen(textTheme).dark().colorScheme,
    //darkColorSchemeBlue,
    MaterialThemeGreen(textTheme).darkMediumContrast().colorScheme,
    MaterialThemeGreen(textTheme).darkHighContrast().colorScheme,
    MaterialThemeRed(textTheme).dark().colorScheme
  ];

  static List<Color> colorOptionsLD = <Color>[Colors.green, Colors.lightGreen, Colors.lightGreenAccent, Colors.red];
  static List<String> colorTextLD = <String>["Green", "GreenL", "GreenLI", "Red"];

  static ThemeData themeDataLight=ThemeData(useMaterial3: useMaterial3,
      colorScheme: AppTheme.colorOptionsShemeL[AppTheme.colorSelected]);
  static ThemeData themeDataDark=ThemeData(useMaterial3: useMaterial3,
      colorScheme: AppTheme.colorOptionsShemeD[AppTheme.colorSelected]);

  static bool useMaterial3 = false;
  static bool useLightMode = true;
  static int colorSelected = 1;
  static ThemeData themeData = ThemeData(
      colorSchemeSeed: AppTheme.colorOptions[AppTheme.colorSelected],
      useMaterial3: AppTheme.useMaterial3,
      brightness: AppTheme.useLightMode ? Brightness.light : Brightness.dark);
}//Comentar
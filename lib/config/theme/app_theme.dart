import 'package:flutter/material.dart';

const colorLists = <Color>[
  Colors.blue,
  Colors.red,
  Colors.pinkAccent,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.teal,
  Colors.blueGrey,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({this.selectedColor = 0, this.isDarkmode = false})
    : assert(selectedColor >= 0, 'Seleceted color must be greater then 0'),
      assert(
        selectedColor < colorLists.length,
        'Selected color must be less equal than ${colorLists.length - 1}',
      );

  ThemeData getTheme() => ThemeData(
    brightness: isDarkmode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorLists[selectedColor],
    appBarTheme: const AppBarTheme(centerTitle: false),
  );
}

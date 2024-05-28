import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
        background: Colors.white,
        primary: Colors.indigoAccent,
        secondary: Color.fromARGB(137, 4, 1, 70)
    )
);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
        background: Colors.black26,
        primary: Colors.indigo,
        secondary: Colors.white70
    )
);
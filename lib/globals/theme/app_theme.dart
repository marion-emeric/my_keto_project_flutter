import 'package:flutter/material.dart';

// Instantiate new  theme data
final ThemeData asthaTutorialTheme = _asthaTutorialTheme();

//Define Base theme for app
ThemeData _asthaTutorialTheme() {
// We'll just overwrite whatever's already there using ThemeData.light()
  final ThemeData base = ThemeData.light();

  // Make changes to light() theme
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
        // AppBar
        primary: const Color.fromARGB(202, 13, 42, 10),
        onPrimary: Colors.white,
        secondary: const Color.fromARGB(255, 255, 255, 255),
        onSecondary: Colors.white,
        background: const Color.fromARGB(255, 228, 243, 228),
        onBackground: Colors.black),
    textTheme: _asthaTutorialTextTheme(base.textTheme),
    elevatedButtonTheme: _elevatedButtonTheme(base.elevatedButtonTheme),
    inputDecorationTheme: _inputDecorationTheme(base.inputDecorationTheme),
  );
}

TextTheme _asthaTutorialTextTheme(TextTheme base) => base.copyWith(
// This'll be our appbars title
      headline1: base.headline1!.copyWith(
          fontFamily: "FontsFree-Net-proxima_nova_reg",
          fontSize: 30,
          fontWeight: FontWeight.w500,
          color: Colors.white),
// for widgets heading/title
      headline2: base.headline2!.copyWith(
        fontFamily: "FontsFree-Net-proxima_nova_reg",
        fontSize: 26,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
// for sub-widgets heading/title
      headline3: base.headline3!.copyWith(
        fontFamily: "FontsFree-Net-proxima_nova_reg",
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
// for widgets contents/paragraph
      bodyText1: base.bodyText1!.copyWith(
          fontFamily: "FontsFree-Net-proxima_nova_reg",
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black),
// for sub-widgets contents/paragraph
      bodyText2: base.bodyText2!.copyWith(
          fontFamily: "FontsFree-Net-proxima_nova_reg",
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: Colors.black),
    );

ElevatedButtonThemeData _elevatedButtonTheme(ElevatedButtonThemeData base) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 255, 189, 183),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    );

InputDecorationTheme _inputDecorationTheme(InputDecorationTheme base) =>
    const InputDecorationTheme(
// Label color for the input widget
      labelStyle: TextStyle(color: Colors.white),
// Define border of input form while focused on
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.0,
          color: Colors.white,
          style: BorderStyle.solid,
        ),
      ),
    );

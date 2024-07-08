import 'package:flutter/material.dart';

const Color kazul = Color.fromRGBO(96, 169, 230, 1);
const Color kverde = Color.fromRGBO(111, 177, 175, 1);
const Color kamarelo = Color.fromRGBO(236, 185, 70, 1);
const Color kvermelho = Color.fromRGBO(210, 89, 62, 1);

const LinearGradient kGradient = LinearGradient(
  colors: [kazul, kverde],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

const String kFontFamily = 'Baloo2';

class Styles {
  // Tema claro
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: kazul,
      brightness: Brightness.light,
      primary: kazul,
      secondary: kverde,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        color: Colors.black54,
      ),
      bodyMedium: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: Colors.black54,
      ),
    ),
  );

  // Tema escuro
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.black,
      brightness: Brightness.dark,
      primary: Colors.black,
      secondary: kverde,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.white,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        color: Colors.white70,
      ),
      bodyMedium: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: Colors.white70,
      ),
    ),
  );

  static const TextStyle kTitleTextStyle = TextStyle(
    fontFamily: kFontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: Colors.black, // Cor do título
  );

  static const TextStyle kSubtitleTextStyle = TextStyle(
    fontFamily: kFontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    color: Colors.black54, // Cor do subtítulo
  );

  static const TextStyle kBodyTextStyle = TextStyle(
    fontFamily: kFontFamily,
    fontWeight: FontWeight.normal,
    fontSize: 16.0,
    color: Colors.black54, // Cor do texto
  );

  static const TextStyle appNameStyle = TextStyle(
    fontFamily: kFontFamily,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    color: Colors.black, // Cor do nome do app
  );

  static BoxDecoration googleButtonDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [kazul, kverde],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  );

  static TextStyle googleButtonText = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 16.0,
    color: Colors.white,
  );
}

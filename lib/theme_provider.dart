import 'package:flutter/material.dart';
import 'styles/constants.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _selectedTheme;
  ThemeData light = Styles.lightTheme;
  ThemeData dark = Styles.darkTheme;

  ThemeProvider({bool isDarkMode = false})
      : _selectedTheme = isDarkMode ? Styles.darkTheme : Styles.lightTheme;

  ThemeData get getTheme => _selectedTheme;

  void toggleTheme() {
    if (_selectedTheme == light) {
      _selectedTheme = dark;
    } else {
      _selectedTheme = light;
    }
    notifyListeners();
  }
}

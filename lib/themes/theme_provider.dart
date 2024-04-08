import 'package:flutter/material.dart';
import 'package:playlist_app/themes/light_mode.dart';
import 'package:playlist_app/themes/dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  //initiate light Mode
  ThemeData _themeData = lightMode;

  //get Theme
  ThemeData get themeData => _themeData;

  //is Dark Mode
  bool get isDarkMode => _themeData == darkMode;

  //set Theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Met à jour l'interface utilisateur lors du changement de thème
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode; // switch to darkMode
    } else {
      themeData = lightMode; // switch to lightMode
    }
  }
}

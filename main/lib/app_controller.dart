import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isDark = false;
  bool darkFont = true;
  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }

  changeCFont() {
    darkFont = !darkFont;
    notifyListeners();
  }
}

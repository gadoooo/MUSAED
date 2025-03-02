import 'package:shared_preferences/shared_preferences.dart';

class SelectLanguage {
  static late SharedPreferences _preferences;
  static const _keyLanguage = "language";
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();
  static Future setLanguage(String lang) async =>
      await _preferences.setString(_keyLanguage, lang);
  static String getLanguage() => _preferences.getString(_keyLanguage)!;
}

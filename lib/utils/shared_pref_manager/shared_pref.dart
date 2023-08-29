import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart';

class SharedPrefsManager {
  final SharedPreferences _sharedPreferences;

  SharedPrefsManager(this._sharedPreferences);

  // Save data to shared preferences
  Future<void> saveData(String key, dynamic value) async {
    if (value is String) {
      await _sharedPreferences.setString(key, value);
    } else if (value is int) {
      await _sharedPreferences.setInt(key, value);
    } else if (value is double) {
      await _sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      await _sharedPreferences.setBool(key, value);
    }
    // Add more cases for other data types if needed
  }

  // Get data from shared preferences
  dynamic getData(String key) {
    return _sharedPreferences.get(key);
  }

  final String tokenKey = 'token';
}

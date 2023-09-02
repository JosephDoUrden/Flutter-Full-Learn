import 'shared_not__initialize.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter, users }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
    // Obtain shared preferences.
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) throw SharedNotInitializeException();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPreferences();
    // Save an integer value to 'counter' key.
    await preferences?.setString(key.name, value);
  }

  Future<void> saveStringItems(SharedKeys key, List<String> value) async {
    _checkPreferences();
    // Save an integer value to 'counter' key.
    await preferences?.setStringList(key.name, value);
  }

  List<String>? getStrings(SharedKeys key) {
    _checkPreferences();
    // Try reading data from the 'counter' key. If it doesn't exist, returns null.
    return preferences?.getStringList(key.name);
  }

  String? getString(SharedKeys key) {
    _checkPreferences();
    // Try reading data from the 'counter' key. If it doesn't exist, returns null.
    return preferences?.getString(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPreferences();
    // Remove an integer value to 'counter' key.
    return (await preferences?.remove(key.name) ?? false);
  }
}

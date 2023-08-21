import 'package:shared_preferences/shared_preferences.dart';

enum PrefKeys { loggedInstatus }

class SharedPrefController {
  SharedPrefController._s();

  late SharedPreferences _sharedPreferences;
  static SharedPrefController? _instance;

  factory SharedPrefController() {
    return _instance ??= SharedPrefController._s();
  }

  Future<void> initPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> login() async {
    return _sharedPreferences.setBool(PrefKeys.loggedInstatus.name, true);
  }

  // Future<bool> login() async {
  //   return await _sharedPreferences.setBool(PrefKeys.loggedIn.name, true);
  // }

  bool get getloggedIn {
    return _sharedPreferences.getBool(PrefKeys.loggedInstatus.name) ?? false;
  }

//   bool getLoggedIn() {
//     return _sharedPreferences.getBool(PrefKeys.loggedInstatus.name) ?? false;
//   }

  Future<void> logOut() {
    return _sharedPreferences.setBool(PrefKeys.loggedInstatus.name, false);
  }
}

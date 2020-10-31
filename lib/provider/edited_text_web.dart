import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';

class EditedText with ChangeNotifier {
  String _name;
  String _roll;
  String _department;
  bool gender;
  bool theme;

  savePrefrence() {
    var prefs = SharedPreferencesPlugin();
    prefs.setValue('String', 'name', _name);
    prefs.setValue('String', 'roll', _roll);
    prefs.setValue('Int', 'dep', _department);
    prefs.setValue('Bool', 'sex', gender);
  }

  loadPrefrence() {
    var prefs = SharedPreferencesPlugin();
    // var name =prefs.getAll().;
  print(name);

    // if (_name == "Default Name") setName(gg.)
    // if (_roll == "0") setRoll(roll);
    // if (_department == "department") setDepartment(department);
  }

  EditedText() {
    _name = "Default Name";
    _roll = "0";
    _department = "department";
    gender = false;
    theme = false;
    loadPrefrence();
  }

  String get name => _name;
  String get roll => _roll;
  String get department => _department;
  // bool get gender => gender;

  void setName(String name) {
    _name = name;
    notifyListeners();
    savePrefrence();
  }

  void setRoll(String roll) {
    _roll = roll;
    notifyListeners();
    savePrefrence();
  }

  void setDepartment(String department) {
    _department = department;
    notifyListeners();
    savePrefrence();
  }

  void setTheme(bool value) {
    theme = value;
    notifyListeners();
  }

  void setGender() {
    gender = !gender;
    notifyListeners();
  }
}

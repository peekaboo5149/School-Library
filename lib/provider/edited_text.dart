import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditedText with ChangeNotifier {
  String _name;
  String _roll;
  String _department;
  bool _gender;
  bool theme;

  savePrefrence() async {
    var prefs = await SharedPreferences.getInstance();

    prefs.setString('name', _name);
    prefs.setString('roll', _roll);
    prefs.setString('dep', _department);
    prefs.setBool('gender', _gender);
  }

  loadPrefrence() async {
    var prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('name');
    String roll = prefs.getString('roll');
    String department = prefs.getString('dep');
    bool gender = prefs.getBool('gender');

    if (_name == "Default Name") setName(name);
    if (_roll == "0") setRoll(roll);
    if (_department == "department") setDepartment(department);
    if (_gender == false) genderSetter(gender);
  }

  EditedText() {
    _name = "Default Name";
    _roll = "0";
    _department = "department";
    _gender = false;
    theme = false;
    loadPrefrence();
  }

  String get name => _name;
  String get roll => _roll;
  String get department => _department;
  bool get gender => _gender;

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

  void genderSetter(bool gender) {
    _gender = gender;
    notifyListeners();
    savePrefrence();
  }

  void setGender() {
    _gender = !_gender;
    notifyListeners();
    savePrefrence();
  }
}

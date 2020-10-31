import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditedText with ChangeNotifier {
  String _name;
  String _roll;
  String _department;
  bool gender;
  bool theme;

  savePrefrence() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _name);
    prefs.setString('roll', _roll);
    prefs.setString('dep', _department);
    prefs.setBool('gender', gender);
  }

  loadPrefrence() async {
    var prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('name');
    String roll = prefs.getString('roll');
    String department = prefs.getString('dep');
    bool bgender = prefs.getBool('gender');

    if (_name == "Default Name") setName(name);
    if (_roll == "0") setRoll(roll);
    if (_department == "department") setDepartment(department);
    if (gender == false) {
      this.gender = bgender;
    }
  }

  EditedText() {
    _name = "Default Name";
    _roll = "0";
    _department = "department";
    gender = false;
    theme = false;
    // loadPrefrence();
  }

  String get name => _name;
  String get roll => _roll;
  String get department => _department;
  // bool get gender => gender;

  void setName(String name) {
    _name = name;
    notifyListeners();
    // savePrefrence();
  }

  void setRoll(String roll) {
    _roll = roll;
    notifyListeners();
  }

  void setDepartment(String department) {
    _department = department;
    notifyListeners();
    
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

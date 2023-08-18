part of '../utils/import/app_import.dart';

class InfoController extends ChangeNotifier {
  String name = "Your Name";
  String hintText = "Enter Your Name";
  bool isClear = false;
  set changeName(String value) {
    name = value;
    if (name.isEmpty) {
      name = "Your Name";
    }
    notifyListeners();
  }
}

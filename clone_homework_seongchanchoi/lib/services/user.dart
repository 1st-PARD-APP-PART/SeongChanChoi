import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ApplicationState extends ChangeNotifier {
  void changeState() {
    notifyListeners();
  }
}

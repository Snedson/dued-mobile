import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? userEmail;

  bool get isAuthenticated => userEmail != null;

  Future<void> authenticate(String email) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    userEmail = email;
    notifyListeners();
  }

  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 900));
    userEmail = null;
    notifyListeners();
  }
}

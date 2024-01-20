import 'package:flutter/cupertino.dart';

class AuthStatus extends ChangeNotifier {
  bool _isLogin = false;

  bool get isLogin => _isLogin;

  setIsLogin(bool isLogin) {
    _isLogin = isLogin;
    notifyListeners();
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/use_case/login_use_case.dart';
import 'package:flutter_video_chatting_sharing_music/auth/presentation/auth_status.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginUseCase _loginUseCase;
  final AuthStatus _authStatus;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  LoginViewModel({
    required LoginUseCase loginUseCase,
    required AuthStatus authStatus,
  })  : _loginUseCase = loginUseCase,
        _authStatus = authStatus;

  Future<void> login() async {
    _isLoading = true;
    notifyListeners();

    await _loginUseCase.execute();
    _authStatus.setIsLogin(true);
    notifyListeners();
  }
}

import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';

abstract interface class AuthRepository {
  Future<bool> isLogin();
  Future<bool> isValidAccessToken();
  Future<UserModel> login();
  Future<void> logout();
  Future<UserModel> getUserModel();
}
import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';

abstract class AuthRepository {
  Future<bool> isLogin();
  Future<UserModel> login();
  Future<void> logout();
}
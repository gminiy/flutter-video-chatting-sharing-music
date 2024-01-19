import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/repository/auth_repository.dart';

class LoginUseCase {
  AuthRepository _repository;

  LoginUseCase({
    required AuthRepository repository,
  }) : _repository = repository;

  Future<UserModel> execute() async {
    return await _repository.login();
  }
}

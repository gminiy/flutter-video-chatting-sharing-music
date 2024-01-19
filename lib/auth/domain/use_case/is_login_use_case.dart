import 'package:flutter_video_chatting_sharing_music/auth/domain/repository/auth_repository.dart';

class IsLoginUseCase {
  AuthRepository _repository;

  IsLoginUseCase({
    required AuthRepository repository,
  }) : _repository = repository;

  Future<bool> execute() async {
    return await _repository.isLogin();
  }
}

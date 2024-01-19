import 'package:flutter_video_chatting_sharing_music/auth/domain/repository/auth_repository.dart';

class LogoutUseCase {
  final AuthRepository _repository;

  LogoutUseCase({
    required AuthRepository repository,
  }) : _repository = repository;

  Future<void> execute() async {
    await _repository.logout();
  }
}

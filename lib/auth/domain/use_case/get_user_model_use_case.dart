import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/repository/auth_repository.dart';

class GetUserModelUseCase {
  final AuthRepository _repository;
  UserModel? userModel;

  GetUserModelUseCase({
    required AuthRepository repository,
  }) : _repository = repository;

  Future<UserModel> execute() async {
    return userModel ?? await _repository.getUserModel();
  }
}

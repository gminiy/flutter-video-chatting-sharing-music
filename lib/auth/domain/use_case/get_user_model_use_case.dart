import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/repository/auth_repository.dart';

class GetUserModelUseCase {
  final AuthRepository _repository;
  UserModel? _userModel;

  GetUserModelUseCase({
    required AuthRepository repository,
  }) : _repository = repository;

  Future<UserModel> execute({bool needRefreshCache = false}) async {
    if (_userModel == null || needRefreshCache) {
      _userModel = await _repository.getUserModel();
    }

    return _userModel!;
  }
}

import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';

abstract interface class GetUserModelUseCase {
  Future<UserModel> execute();
}

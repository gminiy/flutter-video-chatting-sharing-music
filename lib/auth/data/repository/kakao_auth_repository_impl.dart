import 'package:flutter_video_chatting_sharing_music/auth/data/data_source/remote/kakao_api.dart';
import 'package:flutter_video_chatting_sharing_music/auth/data/mapper/kakao_user_mapper.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/repository/auth_repository.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class KakaoAuthRepositoryImpl implements AuthRepository {
  final KakaoApi _api;

  const KakaoAuthRepositoryImpl({
    required KakaoApi api,
  }) : _api = api;

  @override
  Future<bool> isLogin() async {
    return await _api.isLogin();
  }

  @override
  Future<bool> isValidAccessToken() async {
    return await _api.isValidAccessToken();
  }

  @override
  Future<UserModel> login() async {
    final User user = await _api.login();

    return user.toUserModel();
  }

  @override
  Future<void> logout() async {
    await _api.logout();
  }

  @override
  Future<UserModel> getUserModel() async {
    final User user = await _api.getUser();

    return user.toUserModel();
  }
}

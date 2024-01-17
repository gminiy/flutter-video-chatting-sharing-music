import 'package:flutter_video_chatting_sharing_music/auth/domain/model/user_model.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

extension KakaoUserMapper on User {
  UserModel toUserModel() {
    return UserModel(
      id: id.toString(),
      nickname: kakaoAccount?.name ?? 'unnamed',
    );
  }
}

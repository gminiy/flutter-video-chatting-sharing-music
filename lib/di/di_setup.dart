import 'package:flutter_video_chatting_sharing_music/auth/data/data_source/remote/kakao_api.dart';
import 'package:flutter_video_chatting_sharing_music/auth/data/repository/kakao_auth_repository_impl.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/repository/auth_repository.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/use_case/get_user_model_use_case.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/use_case/is_login_use_case.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/use_case/login_use_case.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/use_case/logout_use_case.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<KakaoApi>(KakaoApi());
  getIt
      .registerSingleton<AuthRepository>(KakaoAuthRepositoryImpl(api: getIt()));
  getIt.registerSingleton<GetUserModelUseCase>(
      GetUserModelUseCase(repository: getIt()));
  getIt.registerSingleton<IsLoginUseCase>(IsLoginUseCase(repository: getIt()));
  getIt.registerSingleton<LoginUseCase>(LoginUseCase(repository: getIt()));
  getIt.registerSingleton<LogoutUseCase>(LogoutUseCase(repository: getIt()));
}

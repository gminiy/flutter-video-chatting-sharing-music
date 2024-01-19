import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class KakaoApi {
  KakaoApi() {
    KakaoSdk.init(
      nativeAppKey: dotenv.env['NATIVE_APP_KEY'],
    );
  }

  Future<bool> isLogin() async {
    try {
      // accessToken 만료시 accessTokenInfo()에서 자동 갱신
      // error 발생시 로그인 만료 혹은 로그인 하지 않은 사용자
      await UserApi.instance.accessTokenInfo();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<User> login() async {
    await UserApi.instance.loginWithKakaoAccount();

    return await UserApi.instance.me();
  }

  Future<void> logout() async {
    await UserApi.instance.logout();
  }

  Future<User> getUser() async {
    return await UserApi.instance.me();
  }

  Future<bool> isValidAccessToken() async {
    try {
      await UserApi.instance.accessTokenInfo();
      return true;
    } catch (e) {
      return false;
    }
  }
}

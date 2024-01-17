import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class KakaoApi {
  KakaoApi() {
    KakaoSdk.init(
      nativeAppKey: dotenv.env['NATIVE_APP_KEY'],
    );
  }

  Future<bool> isLogin() async {
    return await AuthApi.instance.hasToken();
  }

  Future<User> login() async {
    await UserApi.instance.loginWithKakaoAccount();

    return await UserApi.instance.me();
  }

  Future<void> logout() async {
    await UserApi.instance.logout();
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

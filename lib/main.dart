import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_video_chatting_sharing_music/auth/domain/use_case/is_login_use_case.dart';
import 'package:flutter_video_chatting_sharing_music/auth/presentation/auth_status.dart';
import 'package:flutter_video_chatting_sharing_music/di/di_setup.dart';
import 'package:flutter_video_chatting_sharing_music/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  diSetup();
  final isLogin = await getIt<IsLoginUseCase>().execute();
  getIt<AuthStatus>().setIsLogin(isLogin);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

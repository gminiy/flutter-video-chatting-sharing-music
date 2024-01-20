import 'package:flutter_video_chatting_sharing_music/auth/presentation/auth_status.dart';
import 'package:flutter_video_chatting_sharing_music/auth/presentation/login/login_screen.dart';
import 'package:flutter_video_chatting_sharing_music/auth/presentation/login/login_view_model.dart';
import 'package:flutter_video_chatting_sharing_music/di/di_setup.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => ChangeNotifierProvider(
        create: (context) => getIt<LoginViewModel>(),
        child: const LoginScreen(),
      ),
    ),
  ],
  refreshListenable: getIt<AuthStatus>(),
  redirect: (context, state) {
    if (state.fullPath == '/login') {
      return null;
    }

    if (!(getIt<AuthStatus>().isLogin)) {
      return '/login';
    }

    return null;
  },
);

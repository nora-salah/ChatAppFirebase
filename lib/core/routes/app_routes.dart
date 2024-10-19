import 'package:chat_app_firebase/features/auth/presentation/views/sign_in/sign_in_view/sign_in_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/sign_up/sign_up_view/sign_up_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: "/signUP",
      builder: (context, state) => SignUpView(),
    ),
    GoRoute(
      path: "/signIn",
      builder: (context, state) => SignInView(),
    ),
  ],
);

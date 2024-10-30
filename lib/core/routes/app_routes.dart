import 'package:chat_app_firebase/features/auth/presentation/views/sign_in_view/sign_in_view.dart';
import 'package:chat_app_firebase/features/home/presentation/view_model/home_view.dart';
import 'package:chat_app_firebase/features/profile/presentation/view_model/profile_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/sign_up_view/sign_up_view.dart';
import '../../features/home/presentation/view_model/widgets/home_nav_bar.dart';
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
    GoRoute(
      path: "/homeNavBar",
      builder: (context, state) => HomeNavBar(),
    ),
    GoRoute(
      path: "/profileView",
      builder: (context, state) => ProfileView(),
    ),
  ],
);
import 'package:crimat_app/src/features/auth/screens/login_screen.dart';
import 'package:crimat_app/src/features/auth/screens/register_screen.dart';
import 'package:crimat_app/src/features/auth/screens/reset_password_screen.dart';
import 'package:crimat_app/src/features/layout/layout_screen.dart';
import 'package:crimat_app/src/features/splash/intro_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/splash_screen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: SplashScreen.name,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/intro',
    name: IntroScreen.name,
    builder: (context, state) => const IntroScreen(),
  ),
  GoRoute(
    path: '/layout',
    name: LayoutScreen.name,
    builder: (context, state) => LayoutScreen(),
  ),
  GoRoute(
    path: '/login',
    name: LoginScreen.name,
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/register',
    name: RegisterScreen.name,
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    path: '/resetPassword',
    name: ResetPasswordScreen.name,
    builder: (context, state) => const ResetPasswordScreen(),
  ),
]);

import 'package:crimat_app/src/features/auth/screens/login_screen.dart';
import 'package:crimat_app/src/features/auth/screens/register_screen.dart';
import 'package:crimat_app/src/features/auth/screens/reset_password_screen.dart';
import 'package:crimat_app/src/features/favorites/favorites_view.dart';
import 'package:crimat_app/src/features/home/home.dart';
import 'package:crimat_app/src/features/layout/layout_screen.dart';
import 'package:crimat_app/src/features/perfil/perfil_home.dart';
import 'package:crimat_app/src/features/splash/intro_screen.dart';
import 'package:flutter/material.dart';
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
  // GoRoute(
  //   path: '/layout',
  //   name: LayoutScreen.name,
  //   builder: (context, state) => LayoutScreen(),
  // ),
  ShellRoute(
    builder: (context, state, child) {
      return LayoutScreen(childView: child);
    },
    routes: [
      GoRoute(
        path: '/home',
        name: HomeView.name,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/history',
        name: 'history',
        builder: (context, state) => const Center(
          child: Text('HISTORY VIEW'),
        ),
      ),
      GoRoute(
        path: '/cart',
        name: 'cart',
        builder: (context, state) => const Center(
          child: Text('CART VIEW'),
        ),
      ),
      GoRoute(
        path: '/favotites',
        name: FavoritesView.name,
        builder: (context, state) => const FavoritesView(),
      ),
      GoRoute(
        path: '/profile',
        name: ProfileView.name,
        builder: (context, state) => const ProfileView(),
      ),
    ],
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

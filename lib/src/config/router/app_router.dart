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

import '../../features/historial/historial_view.dart';
import '../../features/historial/presentation/view/historial_details_screen.dart';
import '../../features/home/products_detales_screen.dart';
import '../../features/payment/presentation/view/payment_aux_view.dart';
import '../../features/perfil/presentation/view/delivery_address_view.dart';
import '../../features/perfil/presentation/view/plane_view.dart';
import '../../features/shoppping_cart/shopping_card_screen.dart';
import '../../features/splash/splash_screen.dart';
import '../../models/historial/historial_model.dart';
import '../../models/home/products/producto_model.dart';
import '../../models/profile/profile_model.dart';

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
          builder: (context, state) => const Scaffold(body: HomeView()),
          routes: [
            GoRoute(
                path: 'home/details',
                name: ProductsDetails.name,
                builder: (context, state) {
                  final args = state.extra as ProductModel;
                  return Scaffold(
                      body: ProductsDetails(
                    product: args,
                    key: state.pageKey,
                  ));
                }),
          ]),
      GoRoute(
          path: '/history',
          name: HistorialView.name,
          builder: (context, state) => const Scaffold(
                body: Center(child: Scaffold(body: HistorialView())),
              ),
          routes: [
            GoRoute(
                path: 'history/details',
                name: HistorialDetails.name,
                builder: (context, state) {
                  final args = state.extra as OrdenModel;
                  return Scaffold(
                      body: HistorialDetails(
                    datos: args,
                    key: state.pageKey,
                  ));
                }),
          ]),
      GoRoute(
          path: '/cart',
          name: ShoppingCartView.name,
          builder: (context, state) => const Scaffold(
                  body: Scaffold(
                body: ShoppingCartView(),
              )),
          routes: [
            GoRoute(
              path: 'cart/auxpayment',
              name: PaymentAuxView.name,
              builder: (context, state) {
                return const Scaffold(
                  body: PaymentAuxView(),
                );
              },
            ),
          ]),
      GoRoute(
        path: '/favotites',
        name: FavoritesView.name,
        builder: (context, state) => const Scaffold(body: FavoritesView()),
      ),
      GoRoute(
          path: '/profile',
          name: ProfileView.name,
          builder: (context, state) => const Scaffold(body: ProfileView()),
          routes: [
            GoRoute(
              path: 'profile/address',
              name: DeliveryAddress.name,
              builder: (context, state) {
                final args = state.extra as ProfileModel;
                return Scaffold(
                  body: DeliveryAddress(
                    datos: args,
                    key: state.pageKey,
                  ),
                );
              },
            ),
            GoRoute(
                path: 'profile/planes',
                name: PlanesView.name,
                builder: (context, state) {
                  return const Scaffold(
                    body: PlanesView(),
                  );
                }),
          ]),
    ],
  ),

  GoRoute(
    path: '/login',
    name: LoginScreen.name,
    builder: (context, state) => const Scaffold(body: LoginScreen()),
  ),
  GoRoute(
    path: '/register',
    name: RegisterScreen.name,
    builder: (context, state) => const Scaffold(body: RegisterScreen()),
  ),
  GoRoute(
    path: '/resetPassword',
    name: ResetPasswordScreen.name,
    builder: (context, state) => const Scaffold(body: ResetPasswordScreen()),
  ),
]);

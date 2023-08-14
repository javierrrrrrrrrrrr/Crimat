import 'package:crimat_app/src/app/app.dart';
import 'package:crimat_app/src/shared/dependency_injection/dependency_injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Orientación vertical hacia arriba
    DeviceOrientation.portraitDown, // Orientación vertical hacia abajo
  ]);
  // Carga las variables de entorno desde el archivo .env
  await dotenv.load(fileName: ".env");
  Stripe.publishableKey =
      dotenv.env['STRIPE_PUBLISHABLE_KEY']?.toString() ?? '';

  runApp(const MyApp());
}

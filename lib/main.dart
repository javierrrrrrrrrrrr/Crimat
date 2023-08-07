import 'package:crimat_app/src/app/app.dart';
import 'package:crimat_app/src/shared/dependency_injection/dependency_injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() async {
  await dotenv.load(); // Carga las variables de entorno desde el archivo .env
  WidgetsFlutterBinding.ensureInitialized();
  //la clave publica desde un archivo agragado al git ignore
  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;

  await init();

  runApp(const MyApp());
}

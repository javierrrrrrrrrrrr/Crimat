import 'package:crimat_app/src/app/app.dart';
import 'package:crimat_app/src/shared/dependency_injection/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const MyApp());
}

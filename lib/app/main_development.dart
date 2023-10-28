import 'package:crypto_portfolio/app/app.dart';
import 'package:crypto_portfolio/app/bootstrap.dart';
import 'package:crypto_portfolio/app/configure/firebase_options_dev.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'CryptoPortfolio_DEV',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await bootstrap(() => const App());
}

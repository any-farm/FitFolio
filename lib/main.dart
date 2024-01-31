import 'package:fitfolio/ui/main_screen.dart';
import 'package:fitfolio/ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitFolio',
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) => SplashScreen(),
        '/main' : (context) => MainScreen(),
      },
    );
  }
}